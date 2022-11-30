//
//  Person.swift
//  Friends-programmatically
//
//  Created by Boris Ofon on 11/28/22.
//

import Foundation

struct Person {
    private let userName: String
    private let password: String
    private let email: String
    
    init(username: String, email: String, password: String) {
        self.userName = username
        self.email = email
        self.password = password
    }
    
    func getUserName() -> String {
        userName
    }
    
    func getEmail() -> String{
        email
    }
}
