//
//
// OnboardingViewController.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class OnboardingViewController: UIViewController {
    
    var onboardingView = OnboardingView()
    
    override func loadView() {
        view = onboardingView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        onboardingView.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
    }

    @objc
    private func continueButtonTapped() {
        let mainCoordinator = MainCoordinator()
        mainCoordinator.start()
        let navigationController = UINavigationController()
        navigationController.popViewController(animated: true)
        print("button pressed")
    }
}
