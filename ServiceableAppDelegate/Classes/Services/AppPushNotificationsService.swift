//
//  AppPushNotificationsService.swift
//  Pods
//
//  Created by Max Mashkov on 4/8/17.
//
//

import UIKit

public protocol AppPushNotificationsService {

    @available(iOS, deprecated: 10.0, message: "Use UserNotifications framework instead")
    func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings)
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data)
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error)
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any])
    
    func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void)
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        withResponseInfo responseInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void)
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void)
}

public extension AppPushNotificationsService {

    @available(iOS, deprecated: 10.0, message: "Use UserNotifications framework instead")
    func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings) {}
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {}
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {}

    func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        completionHandler(.noData)
    }
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        withResponseInfo responseInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void) {
        
        completionHandler()
    }
    
    func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void) {
        
        completionHandler()
    }
}

// MARK: - Push notifications

extension ServiceableAppDelegate {

    @available(iOS, deprecated: 10.0, message: "Use UserNotifications framework instead")
    open func application(_ application: UIApplication, didRegister notificationSettings: UIUserNotificationSettings) {
        
        pushNotificationsService?.application(application, didRegister: notificationSettings)
    }
    
    open func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        pushNotificationsService?.application(application, didRegisterForRemoteNotificationsWithDeviceToken: deviceToken)
    }
    
    open func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        
        pushNotificationsService?.application(application, didFailToRegisterForRemoteNotificationsWithError: error)
    }
    
    open func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any]) {
        
        pushNotificationsService?.application(application, didReceiveRemoteNotification: userInfo)
    }
    
    open func application(
        _ application: UIApplication,
        didReceiveRemoteNotification userInfo: [AnyHashable : Any],
        fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
        pushNotificationsService?.application(
            application,
            didReceiveRemoteNotification: userInfo,
            fetchCompletionHandler: completionHandler
        )
    }
    
    open func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        withResponseInfo responseInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void) {
        
        pushNotificationsService?.application(
            application,
            handleActionWithIdentifier: identifier,
            forRemoteNotification: userInfo,
            withResponseInfo: responseInfo,
            completionHandler: completionHandler
        )
    }
    
    open func application(
        _ application: UIApplication,
        handleActionWithIdentifier identifier: String?,
        forRemoteNotification userInfo: [AnyHashable : Any],
        completionHandler: @escaping () -> Void) {
        
        pushNotificationsService?.application(
            application,
            handleActionWithIdentifier: identifier,
            forRemoteNotification: userInfo,
            completionHandler: completionHandler
        )
    }
}
