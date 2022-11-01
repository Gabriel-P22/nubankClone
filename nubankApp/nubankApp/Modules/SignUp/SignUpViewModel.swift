//
//  SignUpViewModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation

protocol SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] { get set }
    
    func createUser(completion: @escaping (UserModelProtocol?, String?) -> Void)
    func setUpComponents()
}

class SignUpViewModel: SignUpViewModelProtocol {
    var listComponents: [CustomComponentProtocol] = []
    
    let emailField: Questions = Questions()
    let passwordField: Questions = Questions()
    let nameField: Questions = Questions()
    
    var useCase: AuthUseCaseProtocol?
    
    init(useCase: AuthUseCaseProtocol?) {
        self.useCase = useCase
    }
    
    func setUpComponents() {
        emailField.type = .email
        emailField.setTitleQuestion(value: "Email: ")
        emailField.render()
        
        passwordField.type = .password
        passwordField.setTitleQuestion(value: "Password: ")
        passwordField.render()
        
        nameField.type = .name
        nameField.setTitleQuestion(value: "Name: ")
        nameField.render()
        
        listComponents = [nameField, emailField, passwordField]
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
    
    func createUser(completion: @escaping (UserModelProtocol?, String?) -> Void) {
        if let email = emailField.questionField.text, let password = passwordField.questionField.text, let name = nameField.questionField.text {
            useCase?.createUser(email: email, password: password, completion: completion)
            useCase?.sendUser(name: name)
        }
    }
}
