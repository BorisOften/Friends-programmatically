//
//  AppDelegate.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let loginViewController = LoginViewController()
    var navigationController: UINavigationController?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        window?.backgroundColor = .systemBackground
        
        navigationController = UINavigationController(rootViewController: loginViewController)
        
        window?.rootViewController = navigationController
        
        return true
    }
}

// stying the navigation controller
extension AppDelegate {
    func style(){
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

