//
//  UserModelBuilder.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation

class UserModelBuilder: UserModelProtocol {
    internal var userModel = UserModel()
    
    func withEmail(email: String?) -> UserModelProtocol {
        userModel.email = email ?? "Email"
        return self
    }
    
    func withName(name: String?) -> UserModelProtocol {
        userModel.name = name ?? "Name"
        return self
    }
    
    func withIdade(idade: String?) -> UserModelProtocol {
        userModel.idade = idade ?? "Name"
        return self
    }
    
    func withNascimento(nascimento: String?) -> UserModelProtocol {
        userModel.nascimento = nascimento ?? "Name"
        return self
    }
    
    func withSexo(sexo: String?) -> UserModelProtocol {
        userModel.sexo = sexo ?? "Name"
        return self
    }
    
    func withTelefone(telefone: String?) -> UserModelProtocol {
        userModel.telefone = telefone ?? "Name"
        return self
    }
    
    func getUser() -> UserModel? {
        return userModel
    }
}
