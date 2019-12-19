//
//  AppShortcutService.swift
//  Pods-ServiceableAppDelegate_Example
//
//  Created by Alexey Titov on 10/05/2018.
//

import UIKit

public protocol AppShortcutService {
    
    @available(iOS 9.0, *)
    func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void)
}

// MARK: - Action for shortcut item

extension ServiceableAppDelegate {
    
    @available(iOS 9.0, *)
    public func application(_ application: UIApplication, performActionFor shortcutItem: UIApplicationShortcutItem, completionHandler: @escaping (Bool) -> Void) {
        
        for service in shortcutServices {
            service.application(application, performActionFor: shortcutItem, completionHandler: completionHandler)
        }
    }
}
