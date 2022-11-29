//
//  LoginView+SetupUI.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

// for the welcome label and the button
extension LoginViewController {
    
    func style() {
        //title label
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.text = "Welcome to Friends"
        
        // Subtitle Label
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.textAlignment = .center
        subtitleLabel.font = UIFont.preferredFont(forTextStyle: .title2)
        subtitleLabel.adjustsFontForContentSizeCategory = true
        subtitleLabel.text = "Login to continue"
        
        //login button
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        loginButton.configuration = .filled()
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
    }
    
    func layout(){
        
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        view.addSubview(loginStackView)
        view.addSubview(loginButton)
        
        //Title label
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalToSystemSpacingBelow: view.safeAreaLayoutGuide.topAnchor, multiplier: 6),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        //Subtitle label
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalToSystemSpacingBelow: titleLabel.bottomAnchor, multiplier: 4),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        // login stack view
        NSLayoutConstraint.activate([
            loginStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginStackView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 2),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginStackView.trailingAnchor, multiplier: 2)
        ])
        
        // Login Button
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalToSystemSpacingBelow: loginStackView.bottomAnchor, multiplier: 5),
            loginButton.leadingAnchor.constraint(equalTo: loginStackView.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo:  loginStackView.trailingAnchor)
        ])
    }
}


// Action
extension LoginViewController{
    
    @objc func loginButtonPressed() {
        let homeScreenVc = HomeScreenViewController()
        navigationController?.pushViewController(homeScreenVc, animated: true)
    }
}
