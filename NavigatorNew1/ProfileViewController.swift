//
//  ProfileViewController.swift
//  NavigatorNew1
//
//  Created by Anna Zaytseva on 2023/11/20.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let profileHeaderView = ProfileHeaderView()
    let newButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupProfileHeaderView()
        setupNewButton()
        
    }
    
    private func setupProfileHeaderView() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(profileHeaderView)
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
    private func setupNewButton() {
        newButton.translatesAutoresizingMaskIntoConstraints = false
        newButton.setTitle("Type your status here", for: .normal)
        newButton.backgroundColor = .systemMint
        view.addSubview(newButton)
        
        NSLayoutConstraint.activate([
            newButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            newButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            newButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            newButton.heightAnchor.constraint(equalToConstant: 50)
        
        ])
        newButton.addTarget(self, action: #selector(newButtonPressed), for: .touchUpInside)
    }
    @objc private func newButtonPressed() {
        print("New button pressed")
    }
}
