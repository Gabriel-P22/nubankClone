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
    
    func setUpComponents() {
        let emailField: Questions = Questions()
        emailField.type = .email
        emailField.setTitleQuestion(value: "Email:")
        emailField.render()
        
        let passwordField: Questions = Questions()
        passwordField.type = .password
        passwordField.setTitleQuestion(value: "Password:")
        passwordField.render()
        
        let sendButton: SuccessButtonQuestion = SuccessButtonQuestion()
        sendButton.type = .sendButton
        sendButton.setTitleQuestion(value: "submit")
        sendButton.setButtonColor(color: AppColors.instanciate.white)
        sendButton.setButtonBackgroundColor(color: AppColors.instanciate.secondPurple)
        sendButton.render()
        
        let cancelSignUpButton: SuccessButtonQuestion = SuccessButtonQuestion()
        cancelSignUpButton.type = .cancelSignUp
        cancelSignUpButton.setTitleQuestion(value: "Cancel")
        cancelSignUpButton.setButtonColor(color: AppColors.instanciate.white)
        cancelSignUpButton.setButtonBackgroundColor(color: AppColors.instanciate.secondPurple)
        cancelSignUpButton.render()
        
        listComponents = [emailField, passwordField, sendButton, cancelSignUpButton]
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
}
