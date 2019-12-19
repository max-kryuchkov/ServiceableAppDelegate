//
//  AppLaunchService.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import UIKit

public protocol AppLaunchService {

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?)
}

public extension AppLaunchService {
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) {}
}

// MARK: - Launching

extension ServiceableAppDelegate {

    open func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        for service in launchServices {
            service.application(application, willFinishLaunchingWithOptions: launchOptions)
        }
        
        return true
    }

    open func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        for service in launchServices {
            service.application(application, didFinishLaunchingWithOptions: launchOptions)
        }
        
        if let windowProvider = windowProvider {
            window = windowProvider.window()
            window?.makeKeyAndVisible()
        }
        
        return true
    }
}
