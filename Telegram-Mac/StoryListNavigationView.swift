//
//  StoryListNavigationView.swift
//  Telegram
//
//  Created by Mike Renoir on 27.04.2023.
//  Copyright © 2023 Telegram. All rights reserved.
//

import Foundation
import TGUIKit


final class StoryListNavigationView : View {
    
    private var parts:[SimpleLayer] = []
    private let selector: SimpleLayer = SimpleLayer(frame: NSMakeRect(0, 0, 2, 2))
    private var selected: Int? = nil
    required init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        selector.anchorPoint = NSMakePoint(0, 0)
        selector.cornerRadius = 1
        selector.backgroundColor = NSColor.white.cgColor
        self.layer?.addSublayer(selector)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func initialize(count: Int) {
        for part in parts {
            part.removeFromSuperlayer()
        }
        parts.removeAll()
        for _ in 0 ..< count {
            let part = SimpleLayer(frame: NSMakeRect(0, 0, 0, 2))
            part.backgroundColor = NSColor.white.withAlphaComponent(0.3).cgColor
            part.cornerRadius = 1
            self.layer?.addSublayer(part)
            parts.append(part)
        }
        self.updateLayout(size: frame.size, transition: .immediate)
    }
    
    func set(_ index: Int, current: Double, duration: Double, playing: Bool) {
        self.selected = index
                
        CATransaction.begin()
        for (i, part) in parts.enumerated() {
            if i < index {
                part.backgroundColor = NSColor.white.cgColor
            } else {
                part.backgroundColor = NSColor.white.withAlphaComponent(0.3).cgColor
            }
            if i == index {
                if playing {
                    var rect = part.frame
                    rect.size.width = part.frame.width * min(current / duration, 1)
                    selector.frame = rect
                    selector.animateBounds(from: NSMakeSize(rect.size.width, 2).bounds, to: part.frame.size.bounds, duration: duration - current, timingFunction: .linear, removeOnCompletion: false)
                } else {
                    selector.removeAnimation(forKey: "bounds")
                    var rect = part.frame
                    rect.size.width = part.frame.width * min(current / duration, 1)
                    selector.frame = rect
                }
            }
        }
        CATransaction.commit()
    }
    
    override func layout() {
        super.layout()
        self.updateLayout(size: self.frame.size, transition: .immediate)
    }
    func updateLayout(size: NSSize, transition: ContainedViewLayoutTransition) {
        let partSize = (size.width - 12 - CGFloat(parts.count - 1) * 2) / CGFloat(parts.count)
        let itemSize = NSMakeSize(max(2, partSize), 2)
        
        var x: CGFloat = 6
        for part in parts {
            transition.updateFrame(layer: part, frame: CGRect(origin: CGPoint(x: x, y: 0), size: itemSize))
            x += itemSize.width + 2
        }
        
        
    }
}
