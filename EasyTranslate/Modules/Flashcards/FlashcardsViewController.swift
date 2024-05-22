//
//
// FlashcardsViewController.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class FlashcardsViewController: UIViewController {

    let flashcardsView = FlashcardsView()
    
    override func loadView() {
        view = flashcardsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Flashcards"
    }
    
}
