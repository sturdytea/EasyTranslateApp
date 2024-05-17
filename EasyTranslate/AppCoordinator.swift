//
//
// AppCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    var navigationController: UINavigationController
    
    init(window: UIWindow) {
        self.window = window
        self.navigationController = UINavigationController()
    }
    
    func start() {
        print("Coordinator Start")
        window.rootViewController = navigationController
        showMainScreen()
    }
    
    func showMainScreen() {
        let mainViewController = MainViewController()
        let mainViewModel = MainViewModel.init()
        mainViewModel.coordinator = self
        mainViewController.viewModel = mainViewModel
        
        navigationController.pushViewController(mainViewController, animated: true)
    }
    
    func showSettingsScreen() {
        
    }
}
