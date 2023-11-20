//
//  ProfileHeaderView.swift
//  NavigatorNew1
//
//  Created by Anna Zaytseva on 2023/11/20.
//

import Foundation
import UIKit
    
    class ProfileHeaderView: UIView {
        
        let avatarImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "avatarImage")
        imageView.layer.masksToBounds = true
        return imageView
    }()
        let fullNameLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 18, weight: .bold)
            label.textColor = .white
            label.text = "AnnyKate-Models"
            return label
            
        }()
        let statusLabel: UILabel = {
            let label = UILabel()
            label.translatesAutoresizingMaskIntoConstraints = false
            label.font = UIFont.systemFont(ofSize: 14.0, weight: .regular)
            label.textColor = .gray
            label.text = "Welcome"
            return label
            
        }()
        let statusTextField: UITextField = {
            let textField = UITextField()
            textField.translatesAutoresizingMaskIntoConstraints = false
            textField.placeholder = "The Best International Model Agency in Japan"
            textField.borderStyle = .roundedRect
            textField.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
            textField.font = UIFont.systemFont(ofSize: 14)
            textField.textColor = .systemBrown
            textField.textAlignment = .left
            textField.contentVerticalAlignment = .center
            return textField
            
            
        }()
        let setStatusButton: UIButton = {
            let button = UIButton(type: .system)
            button.translatesAutoresizingMaskIntoConstraints = false
            button.setTitle("Show Status", for: .normal)
            button.setTitleColor(.white, for: .normal)
            button.backgroundColor = .systemBlue
            button.layer.cornerRadius = 4.0
            button.layer.shadowOffset = CGSize(width: 15.0, height: 15.0)
            button.layer.shadowRadius = 4.0
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.7
            return button
        }()
        
  
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupUI()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setupUI()
        }
        
        private func setupUI() {
            addSubview(avatarImageView)
            addSubview(fullNameLabel)
            addSubview(statusLabel)
            addSubview(setStatusButton)
            addSubview(statusTextField)
            
            let safeAreaGuide = self.safeAreaLayoutGuide
            
            NSLayoutConstraint.activate([
                avatarImageView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor, constant: 25.0),
                avatarImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
                avatarImageView.widthAnchor.constraint(equalToConstant: 160.0),
                avatarImageView.heightAnchor.constraint(equalToConstant:200.0),
                
                fullNameLabel.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
                fullNameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                setStatusButton.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 50.0),
                setStatusButton.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor, constant: 16.0),
                setStatusButton.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor, constant: -16.0),
                setStatusButton.heightAnchor.constraint(equalToConstant: 50.0),
                
                statusLabel.topAnchor.constraint(equalTo: setStatusButton.bottomAnchor,constant: 8.0),
            statusLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                statusLabel.topAnchor.constraint(equalTo: setStatusButton.bottomAnchor, constant: -84.0),
                statusLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
                
                statusTextField.topAnchor.constraint(equalTo: setStatusButton.bottomAnchor, constant: 8.0),
                statusTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12.0),
                statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12.0),
                statusTextField.heightAnchor.constraint(equalToConstant: 30.0)
            ])
            setStatusButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        }
        @objc private func buttonPressed() {
            print(statusLabel.text ?? "")
        }
    }

    
   
