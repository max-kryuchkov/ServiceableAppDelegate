//
//  AppLocalNotificationsService.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import Foundation

@available(iOS, deprecated: 10.0, message: "Use UserNotifications framework instead")
public protocol AppLocalNotificationsService {
    
    func application(_ application: UIApplication, didReceive notification: UILocalNotification)
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        for notification: UILocalNotification,
        completionHandler: @escaping () -> Void)
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        for notification: UILocalNotification,
        withResponseInfo responseInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void)
}

// MARK: - Local notifications

@available(iOS, deprecated: 10.0, message: "Use UserNotifications framework instead")
extension ServiceableAppDelegate {
    
    open func application(_ application: UIApplication, didReceive notification: UILocalNotification) {
        
        localNotificationsService?.application(application, didReceive: notification)
    }
    
    open func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        for notification: UILocalNotification,
        completionHandler: @escaping () -> Void) {
        
        localNotificationsService?.application(
            application,
            handleActionWithIdentifier: identifier,
            for: notification,
            completionHandler: completionHandler
        )
    }
    
    open func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        for notification: UILocalNotification,
        withResponseInfo responseInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void) {
        
        localNotificationsService?.application(
            application,
            handleActionWithIdentifier: identifier,
            for: notification,
            withResponseInfo: responseInfo,
            completionHandler: completionHandler
        )
    }
}
