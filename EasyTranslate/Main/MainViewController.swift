//
//
// MainViewController.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class MainViewController: UIViewController {
    
    var mainView = MainView()
    var viewModel = MainViewModel()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @objc
    func settingsButtonTapped() {
        viewModel.showSettingsScreen()
    }
}
