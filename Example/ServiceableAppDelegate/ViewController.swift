//
//  ViewController.swift
//  ServiceableAppDelegate
//
//  Created by max-kryuchkov on 12/19/2019.
//  Copyright (c) 2019 max-kryuchkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let vcKey = "vc_key"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        App.lifecycleInteractor.addOutput(self, forKey: vcKey)
    }
    
    deinit {
        App.lifecycleInteractor.removeOutput(forKey: vcKey)
    }
}

// MARK: - Timer behaviour when app enter background

extension ViewController: LifecycleInteractorOutput {
    
    public func applicationDidEnterBackground(_ application: UIApplication) {
        print("App did enter background")
    }
    
    public func applicationWillEnterForeground(_ application: UIApplication) {
        print("App will enter foreground")
    }
}
