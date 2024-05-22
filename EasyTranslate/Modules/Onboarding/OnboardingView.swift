//
//
// OnboardingView.swift
// EasyTranslate
//
// Created by sturdytea on 17.05.2024.
//
// GitHub: https://github.com/sturdytea
//
    

import UIKit

class OnboardingView: UIView {
    
    let image: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sturdytea-pic")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let greeting: UILabel = {
        let label = UILabel()
        label.text = "Lorem ipsum"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let continueButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .purple
        button.tintColor = .black
        button.setTitle("Continue", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
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

private extension OnboardingView {
    func setupViews() {
        addSubview(image)
        addSubview(greeting)
        addSubview(continueButton)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            image.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            image.widthAnchor.constraint(equalToConstant: 240),
            image.heightAnchor.constraint(equalToConstant: 240),
            
            greeting.centerXAnchor.constraint(equalTo: centerXAnchor),
            greeting.centerYAnchor.constraint(equalTo: centerYAnchor),

            continueButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            continueButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -24),
        ])
    }
}
