//
//  UNUserNotifications.swift
//  Telegram
//
//  Created by Mikhail Filimonov on 17.08.2021.
//  Copyright © 2021 Telegram. All rights reserved.
//

import Foundation
import UserNotifications
import SwiftSignalKit
import TelegramCore
import Postbox
import TGUIKit



class UNUserNotifications : NSObject {
    
    enum AuthorizationStatus : Int {
        case notDetermined = 0
        case denied = 1
        case authorized = 2
        case provisional = 3
    }
    fileprivate let manager: SharedNotificationManager
    fileprivate let queue:Queue = Queue(name: "org.telegram.notifies")
    internal required init(manager: SharedNotificationManager) {
        self.manager = manager
        super.init()
        
        registerCategories()
    }
    
    fileprivate var bindings: SharedNotificationBindings {
        return manager.bindings
    }
    
    
    func registerCategories() {
       
    }
    static var _current:UNUserNotifications?
    static func initialize(manager: SharedNotificationManager) {
        if #available(macOS 10.14, *) {
            _current = UNUserNotificationsNew(manager: manager)
        } else {
            _current = UNUserNotificationsOld(manager: manager)
        }
    }
    static var current:UNUserNotifications? {
        return _current
    }
    
    static func recurrentAuthorizationStatus(_ context: AccountContext) -> Signal<AuthorizationStatus, NoError> {
        return context.window.keyWindowUpdater |> mapToSignal { _ in
            return (authorizationStatus |> then(.complete() |> suspendAwareDelay(1 * 60.0, queue: Queue.concurrentDefaultQueue()))) |> restart
        }
    }
    
    static var authorizationStatus: Signal<AuthorizationStatus, NoError> {
        return Signal { subscriber in
            if #available(macOS 10.14, *) {
                UNUserNotificationCenter.current().getNotificationSettings { settings in
                    if let value = AuthorizationStatus(rawValue: settings.authorizationStatus.rawValue) {
                        subscriber.putNext(value)
                        subscriber.putCompletion()
                    }
                }
            } else {
                subscriber.putNext(.authorized)
                subscriber.putCompletion()
            }
            return EmptyDisposable
        }
    }
    
    fileprivate func activateNotification(userInfo:[AnyHashable : Any], replyText: String? = nil) {
        if let messageId = getNotificationMessageId(userInfo: userInfo, for: "reply"), let accountId = userInfo["accountId"] as? Int64 {
            
            let accountId = AccountRecordId(rawValue: accountId)
            
            guard let account = manager.activeAccounts.accounts.first(where: {$0.0 == accountId})?.1 else {
                return
            }
            
            closeAllModals()
            
            if let text = replyText {
                if let sourceMessageId = getNotificationMessageId(userInfo: userInfo, for: "source") {
                    var replyToMessageId:MessageId?
                    if sourceMessageId.peerId.namespace != Namespaces.Peer.CloudUser {
                        replyToMessageId = sourceMessageId
                    }
                    _ = enqueueMessages(account: account, peerId: sourceMessageId.peerId, messages: [EnqueueMessage.message(text: text, attributes: [], mediaReference: nil, replyToMessageId: replyToMessageId, localGroupingKey: nil, correlationId: nil)]).start()

                } else {
                    var replyToMessageId:MessageId?
                    if messageId.peerId.namespace != Namespaces.Peer.CloudUser {
                        replyToMessageId = messageId
                    }
                    _ = enqueueMessages(account: account, peerId: messageId.peerId, messages: [EnqueueMessage.message(text: text, attributes: [], mediaReference: nil, replyToMessageId: replyToMessageId, localGroupingKey: nil, correlationId: nil)]).start()
                }
            } else {
                if let threadId = getNotificationMessageId(userInfo: userInfo, for: "thread"), let fromId = getNotificationMessageId(userInfo: userInfo, for: "source") {
                    self.bindings.navigateToThread(account, threadId, fromId)
                } else {
                    self.bindings.navigateToChat(account, messageId.peerId)
                }
                
                manager.window.makeKeyAndOrderFront(nil)
                NSApp.activate(ignoringOtherApps: true)
            }
        } else {
            manager.window.makeKeyAndOrderFront(nil)
            NSApp.activate(ignoringOtherApps: true)
        }
    }
    
    func add(_ notification: NSUserNotification) -> Void {
        
    }
    
    func clearNotifies(_ peerId:PeerId, maxId:MessageId) {
        
    }


    func clearNotifies(by msgIds: [MessageId]) {
       
    }

}


final class UNUserNotificationsOld : UNUserNotifications, NSUserNotificationCenterDelegate {
    func userNotificationCenter(_ center: NSUserNotificationCenter, didDeliver notification: NSUserNotification) {
        if manager.requestUserAttention && !manager.window.isKeyWindow {
            NSApp.requestUserAttention(.informationalRequest)
        }
    }
    
    required init(manager: SharedNotificationManager) {
        super.init(manager: manager)
        NSUserNotificationCenter.default.delegate = self
    }

    @objc func userNotificationCenter(_ center: NSUserNotificationCenter, didDismissAlert notification: NSUserNotification) {
        if let userInfo = notification.userInfo, let timestamp = userInfo["timestamp"] as? Int32, let _ = userInfo["accountId"] as? Int64, let messageId = getNotificationMessageId(userInfo: userInfo, for: "reply") {
            
            bindings.applyMaxReadIndexInteractively(MessageIndex(id: messageId, timestamp: timestamp))
        }
    }
    
    func userNotificationCenter(_ center: NSUserNotificationCenter, didActivate notification: NSUserNotification) {
        center.removeDeliveredNotification(notification)
    }
    
    override func clearNotifies(_ peerId:PeerId, maxId:MessageId) {
        queue.async {
            
           let deliveredNotifications = NSUserNotificationCenter.default.deliveredNotifications
                        
            for notification in deliveredNotifications {
                if let notificationMessageId = getNotificationMessageId(userInfo: notification.userInfo ?? [:], for: "reply") {
                                   
                    let timestamp = notification.userInfo?["timestamp"] as? Int32 ?? 0
                    
                    if notificationMessageId.peerId == peerId, notificationMessageId <= maxId {
                        NSUserNotificationCenter.default.removeDeliveredNotification(notification)
                    } else if timestamp == 0 || timestamp + 24 * 60 * 60 < Int32(Date().timeIntervalSince1970) {
                        NSUserNotificationCenter.default.removeDeliveredNotification(notification)
                    }
                }
            }
        }
    }


    override func clearNotifies(by msgIds: [MessageId]) {
        queue.async {
            let deliveredNotifications = NSUserNotificationCenter.default.deliveredNotifications
            
            for notification in deliveredNotifications {
                if let notificationMessageId = getNotificationMessageId(userInfo: notification.userInfo ?? [:], for: "reply") {
                    for msgId in msgIds {
                        if notificationMessageId == msgId {
                            NSUserNotificationCenter.default.removeDeliveredNotification(notification)
                        }
                    }
                }
            }
        }
    }
    
    override func add(_ notification: NSUserNotification) -> Void {
        if let soundName = notification.soundName {
            if soundName != "default" {
                appDelegate?.playSound(soundName)
                notification.soundName = nil
            }
        }
        NSUserNotificationCenter.default.deliver(notification)
    }
}
    
@available(macOS 10.14, *)
final class UNUserNotificationsNew : UNUserNotifications, UNUserNotificationCenterDelegate {
    
    required init(manager: SharedNotificationManager) {
        super.init(manager: manager)
        UNUserNotificationCenter.current().delegate = self
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {

           //If you don't want to show notification when app is open, do something here else and make a return here.
           //Even you you don't implement this delegate method, you will not see the notification on the specified controller. So, you have to implement this delegate and make sure the below line execute. i.e. completionHandler.

           completionHandler([.alert, .sound])
       }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
    
        switch response.actionIdentifier {
        case UNNotificationDismissActionIdentifier: // Notification was dismissed by user
            completionHandler()
        case UNNotificationDefaultActionIdentifier:
            activateNotification(userInfo: response.notification.request.content.userInfo)
            if manager.requestUserAttention && !manager.window.isKeyWindow {
                NSApp.requestUserAttention(.informationalRequest)
            }
            completionHandler()
         case UNNotification.replyCategory:
            if let textResponse = response as? UNTextInputNotificationResponse {
                let reply = textResponse.userText
                activateNotification(userInfo: response.notification.request.content.userInfo, replyText: reply)
                completionHandler()
            }
        default:
            completionHandler()
        }
    }
    
    override func registerCategories() {
        let replyAction = UNTextInputNotificationAction(identifier: "reply", title: L10n.notificationReply, options: [], textInputButtonTitle: L10n.notificationTitleReply, textInputPlaceholder: L10n.notificationInputReply)
        
        
        let replyCategory = UNNotificationCategory(identifier: "reply", actions: [replyAction], intentIdentifiers: [], options: [])
        UNUserNotificationCenter.current().setNotificationCategories([replyCategory])
    }
    override func add(_ notification: NSUserNotification) -> Void {
        let content = UNMutableNotificationContent()
        content.title = notification.title ?? ""
        content.body = notification.informativeText ?? ""
        content.subtitle = notification.subtitle ?? ""
        if let soundName = notification.soundName {
            if soundName == "default" {
                content.sound = .default
            } else {
                appDelegate?.playSound(soundName)
            }
            
        }
        if notification.hasActionButton {
            content.categoryIdentifier = UNNotification.replyCategory
        }
        
        if let image = notification.contentImage {
            if let attachment = UNNotificationAttachment.create(identifier: "image", image: image, options: nil) {
                content.attachments = [attachment]
            }
        }
        content.userInfo = notification.userInfo ?? [:]
        
        UNUserNotificationCenter.current().add(UNNotificationRequest(identifier: notification.identifier ?? "", content: content, trigger: nil), withCompletionHandler: { error in
            var bp = 0
            bp += 1
        })
    }
    
    override func clearNotifies(_ peerId:PeerId, maxId:MessageId) {
        queue.async {
            let manager = UNUserNotificationCenter.current()
            manager.getDeliveredNotifications(completionHandler: { notifications in
                for notification in notifications {
                    let userInfo = notification.request.content.userInfo
                    if let notificationMessageId = getNotificationMessageId(userInfo: userInfo, for: "reply") {
                        let timestamp = userInfo["timestamp"] as? Int32 ?? 0
                        if notificationMessageId.peerId == peerId, notificationMessageId <= maxId {
                            manager.removeDeliveredNotifications(withIdentifiers: [notification.request.identifier])
                        } else if timestamp == 0 || timestamp + 24 * 60 * 60 < Int32(Date().timeIntervalSince1970) {
                            manager.removeDeliveredNotifications(withIdentifiers: [notification.request.identifier])
                        }
                    }
                }
            })
        }
    }


    override func clearNotifies(by msgIds: [MessageId]) {
        queue.async {
             UNUserNotificationCenter.current().getDeliveredNotifications(completionHandler: { notifications in
                var remove: Set<String> = Set()
                for notification in notifications {
                    if let notificationMessageId = getNotificationMessageId(userInfo: notification.request.content.userInfo, for: "reply") {
                        for msgId in msgIds {
                            if notificationMessageId == msgId {
                                remove.insert(notification.request.identifier)
                            }
                        }
                    }
                }
                UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: Array(remove))
            })
        }
    }
}







@available(macOS 10.14, *)
private extension UNNotificationAttachment {

    static func create(identifier: String, image: NSImage, options: [NSObject : AnyObject]?) -> UNNotificationAttachment? {
        let fileManager = FileManager.default
        let tmpSubFolderName = ProcessInfo.processInfo.globallyUniqueString
        let tmpSubFolderURL = URL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(tmpSubFolderName, isDirectory: true)
        do {
            try fileManager.createDirectory(at: tmpSubFolderURL, withIntermediateDirectories: true, attributes: nil)
            let imageFileIdentifier = identifier+".jpeg"
            let fileURL = tmpSubFolderURL.appendingPathComponent(imageFileIdentifier)
            let imageData = image.tiffRepresentation(using: .jpeg, factor: 1)
            try imageData?.write(to: fileURL)
            let imageAttachment = try UNNotificationAttachment.init(identifier: imageFileIdentifier, url: fileURL, options: options)
            return imageAttachment
        } catch {
            print("error " + error.localizedDescription)
        }
        return nil
    }
}


@available(macOS 10.14, *)
private extension UNNotification {
    static let replyCategory: String = "reply"
}
