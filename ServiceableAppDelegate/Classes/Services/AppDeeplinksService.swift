//
//  AppDeeplinksService.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import Foundation

public protocol AppDeeplinksService {
    
    func openUrl(_ url: URL, withOptions options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool
}

// MARK: - Routing

extension ServiceableAppDelegate {
    
    open func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        
        for service in deeplinksServices {
            if service.openUrl(url, withOptions: options) {
                return true
            }
        }
        
        return false
    }
    
}
