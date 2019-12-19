//
//  AppLifecycleService.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import UIKit

public protocol AppLifecycleService {
    
    func applicationDidBecomeActive(_ application: UIApplication)
    func applicationWillResignActive(_ application: UIApplication)
    func applicationDidReceiveMemoryWarning(_ application: UIApplication)
    func applicationWillTerminate(_ application: UIApplication)
    func applicationDidEnterBackground(_ application: UIApplication)
    func applicationWillEnterForeground(_ application: UIApplication)
}

public extension AppLifecycleService {
    func applicationDidBecomeActive(_ application: UIApplication) {}
    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {}
    func applicationWillTerminate(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) {}
    func applicationWillEnterForeground(_ application: UIApplication) {}
}

// MARK: - Lifecycle

extension ServiceableAppDelegate {
    
    open func applicationDidBecomeActive(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationDidBecomeActive(application)
        }
    }
    
    open func applicationWillResignActive(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationWillResignActive(application)
        }
    }
    
    open func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationDidReceiveMemoryWarning(application)
        }
    }
    
    open func applicationWillTerminate(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationWillTerminate(application)
        }
    }
    
    open func applicationDidEnterBackground(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationDidEnterBackground(application)
        }
    }
    
    open func applicationWillEnterForeground(_ application: UIApplication) {
        
        for service in lifecycleServices {
            service.applicationWillEnterForeground(application)
        }
    }
}
