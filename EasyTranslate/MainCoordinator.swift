//
//
// MainCoordinator.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class MainCoordinator: Coordinator {
    
    var rootViewController: UITabBarController
    var childCoordinators = [Coordinator]()
    
    init() {
        self.rootViewController = UITabBarController()
        rootViewController.tabBar.isTranslucent = true
        rootViewController.tabBar.backgroundColor = .white
        
    }
    
    func start() {
        let translatorCoordinator = TranslatorCoordinator()
        translatorCoordinator.start()
        childCoordinators.append(translatorCoordinator)
        let translatorViewController = translatorCoordinator.translatorViewController
        setup(translatorViewController,
              title: "Translate",
              defaultImageName: "character.bubble",
              selectedImageName: "character.bubble.fill")
        
        let flashcardsCoordinator = FlashcardsCoordinator()
        flashcardsCoordinator.start()
        childCoordinators.append(flashcardsCoordinator)
        let flashcardsViewController = flashcardsCoordinator.flashcardsViewController
        setup(flashcardsViewController,
              title: "Flashcards",
              defaultImageName: "doc.richtext",
              selectedImageName: "doc.richtext.fill")
        
        let profileCoordinator = ProfileCoordinator()
        profileCoordinator.start()
        childCoordinators.append(profileCoordinator)
        let profileViewController = profileCoordinator.profileViewController
        setup(profileViewController, 
              title: "Profile",
              defaultImageName: "person.crop.circle",
              selectedImageName: "person.crop.circle.fill")
        
        self.rootViewController.viewControllers = [
            translatorCoordinator.rootViewController,
            flashcardsCoordinator.rootViewController,
            profileCoordinator.rootViewController,
        ]
    }
    
    func setup(_ viewController: UIViewController, title: String, defaultImageName: String = "questionmark.circle", selectedImageName: String = "questionmark.circle.fill") {
        let defaultImage = UIImage(systemName: defaultImageName)
        let selectedImage = UIImage(systemName: selectedImageName)
        let tabBarItem = UITabBarItem(title: title, image: defaultImage, selectedImage: selectedImage)
        viewController.tabBarItem = tabBarItem
    }
}
