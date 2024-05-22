//
//
// FlashcardsView.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class FlashcardsView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension FlashcardsView {
    func setupView() {
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
           
        ])
    }
}
