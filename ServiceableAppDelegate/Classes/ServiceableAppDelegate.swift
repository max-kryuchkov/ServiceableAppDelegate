//
//  ServiceableAppDelegate.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import UIKit

open class ServiceableAppDelegate: UIResponder, UIApplicationDelegate {
    
    open var window: UIWindow?
    
    open var windowProvider: AppWindowProvider? {
        return nil
    }
    
    open var launchServices: [AppLaunchService] {
        return []
    }
    
    open var lifecycleServices: [AppLifecycleService] {
        return []
    }
    
    open var deeplinksServices: [AppDeeplinksService] {
        return []
    }
    
    open var pushNotificationsService: AppPushNotificationsService? {
        return nil
    }
    
    open var localNotificationsService: AppLocalNotificationsService? {
        return nil
    }
    
    open var activityServices: [AppUserActivityService] {
        return []
    }
    
    open var shortcutServices: [AppShortcutService] {
        return []
    }
}
