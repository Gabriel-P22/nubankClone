//
//  SignUpViewModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation

protocol SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] { get set }
    
    func setUpComponents()
}

class SignUpViewModel: SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] = []
    
    public typealias test = (() -> ())
    
    func setUpComponents() {
        let emailField: Questions = Questions()
        emailField.type = .email
        emailField.setTitleQuestion(value: "Email:")
        emailField.render()
        
        let passwordField: Questions = Questions()
        passwordField.type = .password
        passwordField.setTitleQuestion(value: "Password:")
        passwordField.render()
        
        listComponents = [emailField, passwordField]
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
}
