//
//  LoginView.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit


// Will be a the password and username field embedded in a stack view

class LoginView : UIView {
    
    let stackView = UIStackView()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        style()
        layout()
        
    }
    
    required init(coder:NSCoder) {
        fatalError("Init(coder: has not been implemented)")
    }
    
}


extension LoginView{
    
    func style(){
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .secondarySystemBackground
        layer.cornerRadius = 5
        clipsToBounds = true
        
        
        //stackview
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.spacing = 5
        
        //username
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.placeholder = "Username"
        usernameTextField.delegate = self
        
        //password
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        
    }
    
    func layout(){
        
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(passwordTextField)
        
        addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])
        
    }
}

extension LoginView: UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
       return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}

