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
import Combine

protocol Coordinator {
    func start()
}

class AppCoordinator: Coordinator {
    
    var window: UIWindow
    var childCoordinators = [Coordinator]()
    
    let hasSeenOnboarding = CurrentValueSubject<Bool, Never>(false)
    var subscriptions = Set<AnyCancellable>()
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
// TODO: Need To Establish Onboarding Later
//        hasSeenOnboarding.sink { [weak self] hasSeen in
//            if hasSeen {
//                let mainCoordinator = MainCoordinator()
//                mainCoordinator.start()
//                self?.childCoordinators = [mainCoordinator]
//                self?.window.rootViewController = mainCoordinator.rootViewController
//            } else if let hasSeenOnboarding = self?.hasSeenOnboarding {
//                print("Coordinator Start")
//                let onboardingCoordinator = OnboardingCoordinator(hasSeenOnboarding: hasSeenOnboarding)
//                onboardingCoordinator.start()
//                self?.childCoordinators = [onboardingCoordinator]
//                self?.window.rootViewController = onboardingCoordinator.rootViewController
//            }
//        }
//        .store(in: &subscriptions)
        
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        self.childCoordinators = [mainCoordinator]
        self.window.rootViewController = mainCoordinator.rootViewController
    }
}
