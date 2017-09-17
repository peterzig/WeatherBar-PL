//
//  AboutMe.swift
//  WeatherBar
//
//  Created by Peter Zaporowski on 17.09.2017.
//  Copyright © 2017 Etsy. All rights reserved.
//

import Cocoa

protocol AboutMeWindowDelegate {
    func aboutMeDidUpdate()
}

class AboutMeWindow: NSWindowController, NSWindowDelegate {
    var delegate: AboutMeWindowDelegate?
    
    override var windowNibName : String! {
        return "AboutMe"
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.center()
        self.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    
    }
    
    func windowWillClose(_ notification: Notification) {
        delegate?.aboutMeDidUpdate()
    }
}

