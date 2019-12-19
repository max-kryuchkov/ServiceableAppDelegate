//
//  AppDelegate.swift
//  ServiceableAppDelegate
//
//  Created by max-kryuchkov on 12/19/2019.
//  Copyright (c) 2019 max-kryuchkov. All rights reserved.
//

import UIKit
import ServiceableAppDelegate

@UIApplicationMain
class AppDelegate: ServiceableAppDelegate {
    
    override var lifecycleServices: [AppLifecycleService] {
        return [App.lifecycleInteractor]
    }
}
