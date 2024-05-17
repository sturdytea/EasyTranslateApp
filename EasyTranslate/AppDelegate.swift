//
//
// AppDelegate.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var appCoordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow()
        let appCoordinator = AppCoordinator(window: window)
        appCoordinator.start()
        self.appCoordinator = appCoordinator
        window.makeKeyAndVisible()
        return true
    }
}

