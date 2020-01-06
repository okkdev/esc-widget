//
//  EscWidget.swift
//  Esc
//
//  Created by Pierluigi Galdi on 06/01/2020.
//  Copyright © 2020 Pierluigi Galdi. All rights reserved.
//

import Foundation
import AppKit
import PockKit
        				
/// Make sure to include `PockKit` in your Podfile and run `pod install`
				        
class EscWidget: PKWidget {
    var identifier: NSTouchBarItem.Identifier = NSTouchBarItem.Identifier(rawValue: "EscWidget")
    var customizationLabel: String = "Esc"
    var view: NSView!

    required init() {
        self.view = NSButton(title: "Esc", target: self, action: #selector(printMessage))
    }
    
    @objc private func printMessage() {
        print("[EscWidget]: Hello, World!")
    }
        
}
