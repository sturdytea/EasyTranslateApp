//
//
// ProfileViewController.swift
// EasyTranslate
//
// Created by sturdytea on 20.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class ProfileViewController: UIViewController {

    let profileView = ProfileView()
    
    override func loadView() {
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Profile"
    }
}
