//
//
// FlashcardsCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class FlashcardsCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var flashcardsViewController = FlashcardsViewController()
    
    init() {
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        rootViewController.setViewControllers([flashcardsViewController], animated: false)
    }
}
