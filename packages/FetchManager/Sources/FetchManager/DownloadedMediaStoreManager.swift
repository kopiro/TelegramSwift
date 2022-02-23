//
//  File.swift
//  
//
//  Created by Mike Renoir on 21.02.2022.
//

import Foundation
import TelegramCore
import Postbox
import SwiftSignalKit

public enum MediaAutoDownloadPeerType {
    case contact
    case otherPrivate
    case group
    case channel
}


public protocol DownloadedMediaStoreManager: AnyObject {
    func store(_ media: AnyMediaReference, timestamp: Int32, peerType: MediaAutoDownloadPeerType)
}

public func storeDownloadedMedia(storeManager: DownloadedMediaStoreManager?, media: AnyMediaReference, peerType: MediaAutoDownloadPeerType) -> Signal<Never, NoError> {
    guard case let .message(message, _) = media, let timestamp = message.timestamp, let incoming = message.isIncoming, incoming, let secret = message.isSecret, !secret else {
        return .complete()
    }
    
    return Signal { [weak storeManager] subscriber in
        storeManager?.store(media, timestamp: timestamp, peerType: peerType)
        subscriber.putCompletion()
        return EmptyDisposable
    }
}
