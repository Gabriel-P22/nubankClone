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
    
    func getUser() -> UserModel? {
        return userModel
    }
}
