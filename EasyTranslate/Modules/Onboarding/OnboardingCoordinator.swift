//
//
// OnboardingCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit
import Combine

class OnboardingCoordinator: Coordinator {
    
    var rootViewController = UIViewController()
    var hasSeenOnboarding: CurrentValueSubject<Bool, Never>
    
    init(hasSeenOnboarding: CurrentValueSubject<Bool, Never>) {
        self.hasSeenOnboarding = hasSeenOnboarding
    }
    
    func start() {
        _ = OnboardingView()
        let navigationController = UINavigationController()
        rootViewController = navigationController
        navigationController.pushViewController(OnboardingViewController(), animated: true)
        hasSeenOnboarding.send(true)
    }
}
