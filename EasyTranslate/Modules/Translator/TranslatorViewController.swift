//
//
// TranslatorViewController.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class TranslatorViewController: UIViewController {

    let translatorView = TranslatorView()
    
    override func loadView() {
        view = translatorView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Translate"
    }
}
