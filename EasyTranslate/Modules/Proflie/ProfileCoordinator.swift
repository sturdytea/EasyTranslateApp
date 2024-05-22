//
//
// ProfileCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 20.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class ProfileCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    var profileViewController = ProfileViewController()
    
    init() {
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        rootViewController.setViewControllers([profileViewController], animated: false)
    }
}
