//
//  LoginViewController.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    let loginStackView = LoginView()
    let titleLabel = UILabel()
    let loginButton = UIButton(type: .system)
    let subtitleLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        style()
        layout()
    }
}






