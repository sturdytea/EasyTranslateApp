//
//
// MainViewModel.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import Foundation

class MainViewModel {
    weak var coordinator: AppCoordinator?
    
    func showSettingsScreen() {
        coordinator?.showSettingsScreen()
    }
}
