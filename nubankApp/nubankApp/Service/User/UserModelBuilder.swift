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
    
    func getUser() -> UserModel? {
        return userModel
    }
}
