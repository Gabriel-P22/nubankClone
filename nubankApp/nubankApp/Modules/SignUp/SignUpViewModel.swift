//
//  SignUpViewModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation

protocol SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] { get set }
    
    func createUser()
    func setUpComponents()
}

class SignUpViewModel: SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] = []
    var oauth: OAuthProtocol?
    
    let emailField: Questions = Questions()
    let passwordField: Questions = Questions()
    
    
    init(oauth: OAuthProtocol?) {
        self.oauth = oauth
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
    
    func createUser() {
        if let email = emailField.questionField.text, let password = passwordField.questionField.text {
            oauth?.createUser(email: email, password: password)
        }
    }
}
