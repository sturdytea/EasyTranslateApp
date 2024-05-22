//
//
// PrimaryButton.swift
// EasyTranslate
//
// Created by sturdytea on 20.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class PrimaryButton: UIButton {

    init(_ titleText: String, isEnabled: Bool = true) {
        super.init(frame: .zero)
        configure()
    }
    
    private func configure() {
        backgroundColor = .purple
        tintColor = .black
        setTitle("Continue", for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
