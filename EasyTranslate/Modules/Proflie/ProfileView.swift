//
//
// ProfileView.swift
// EasyTranslate
//
// Created by sturdytea on 20.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class ProfileView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

private extension ProfileView {
    func setupViews() {
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
        ])
    }
}
