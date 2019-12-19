//
//  LifecycleInteractor.swift
//  ServiceableAppDelegate_Example
//
//  Created by max on 19.12.2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import ServiceableAppDelegate

final class LifecycleInteractorOutputHolder {
    weak var output: LifecycleInteractorOutput?
    
    init(output: LifecycleInteractorOutput) {
        self.output = output
    }
}

protocol LifecycleInteractorOutput: AppLifecycleService, AnyObject {}

final class LifecycleInteractor {
    
    var outputs = [String: LifecycleInteractorOutputHolder]()
    
    func addOutput(_ output: LifecycleInteractorOutput, forKey key: String) {
        outputs[key] = LifecycleInteractorOutputHolder(output: output)
    }
    
    func removeOutput(forKey key: String) {
        outputs[key] = nil
    }
}

// MARK: - AppLifecycleService

extension LifecycleInteractor: AppLifecycleService {
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationDidBecomeActive(application) }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationWillResignActive(application) }
    }
    
    func applicationDidReceiveMemoryWarning(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationDidReceiveMemoryWarning(application) }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationWillTerminate(application) }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationDidEnterBackground(application) }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        outputs.values.forEach { $0.output?.applicationWillEnterForeground(application) }
    }
}
