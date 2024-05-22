//
//
// TranslatorCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class TranslatorCoordinator: Coordinator {
    
    var rootViewController = UINavigationController()
    lazy var translatorViewController = TranslatorViewController()
    
    init() {
        rootViewController.navigationBar.prefersLargeTitles = true
    }
    
    func start() {
        rootViewController.setViewControllers([translatorViewController], animated: false)
    }
}
