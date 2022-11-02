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
    let idadeField: Questions = Questions()
    let nameField: Questions = Questions()
    let nascimentoField: Questions = Questions()
    let sexoField: Questions = Questions()
    let telefoneField: Questions = Questions()
    
    var oauthUseCase: AuthUseCaseProtocol?
    var firebaseUseCase: FirebaseAdapterUseCaseProtocol?
    var userModel: UserModelProtocol?
    
    init(
        oauthUseCase: AuthUseCaseProtocol?,
        firebaseUseCase: FirebaseAdapterUseCaseProtocol?,
        userModel: UserModelProtocol?
    ) {
        self.oauthUseCase = oauthUseCase
        self.firebaseUseCase = firebaseUseCase
    }
    
    func setUpComponents() {
        emailField.type = .email
        emailField.setTitleQuestion(value: "Email: ")
        emailField.render()
        
        passwordField.type = .password
        passwordField.setTitleQuestion(value: "Password: ")
        passwordField.render()
        
        idadeField.type = .idade
        idadeField.setTitleQuestion(value: "Idade: ")
        idadeField.render()
        
        nameField.type = .name
        nameField.setTitleQuestion(value: "Name: ")
        nameField.render()
        
        nascimentoField.type = .nascimento
        nascimentoField.setTitleQuestion(value: "nascimento: ")
        nascimentoField.render()
        
        sexoField.type = .sexo
        sexoField.setTitleQuestion(value: "sexo: ")
        sexoField.render()
        
        telefoneField.type = .telefone
        telefoneField.setTitleQuestion(value: "telefone: ")
        telefoneField.render()
        
        listComponents = [
            nameField,
            idadeField,
            nascimentoField,
            sexoField,
            telefoneField,
            emailField,
            passwordField
        ]
    }
    
    func getComponent() -> [CustomComponentProtocol] {
        return listComponents
    }
    
    func createUser(completion: @escaping (UserModelProtocol?, String?) -> Void) {
        if let email = emailField.questionField.text,
           let password = passwordField.questionField.text,
           let idade = idadeField.questionField.text,
           let name = nameField.questionField.text,
           let nascimento = nascimentoField.questionField.text,
           let sexo = sexoField.questionField.text,
           let telefone = telefoneField.questionField.text {
            
            oauthUseCase?.createUser(email: email, password: password, completion: completion)
            firebaseUseCase?.sendUser(idade: idade, name: name, nascimento: nascimento, sexo: sexo, telefone: telefone)
            userModel?
                .withIdade(idade: idade)
                .withName(name: name)
                .withNascimento(nascimento: nascimento)
                .withSexo(sexo: sexo)
                .withTelefone(telefone: telefone)
        }
    }
}
