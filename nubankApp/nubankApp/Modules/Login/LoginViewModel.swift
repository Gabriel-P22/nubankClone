//
//  LoginViewModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import UIKit

protocol LoginViewModelProtocol {
    var listComponents: [CustomComponentProtocol] { get set }
    
    func setUpComponents()
}

class LoginViewModel: LoginViewModelProtocol {
    
    var listComponents: [CustomComponentProtocol] = []
    
    let emailField: Questions = Questions()
    let passwordField: Questions = Questions()
    
    init() {
        
    }
    
    func setUpComponents() {
        emailField.type = .email
        emailField.setTitleQuestion(value: "Email: ")
        emailField.render()
        
        passwordField.type = .password
        passwordField.setTitleQuestion(value: "Password: ")
        passwordField.render()
        
        listComponents = [emailField, passwordField]
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
}
