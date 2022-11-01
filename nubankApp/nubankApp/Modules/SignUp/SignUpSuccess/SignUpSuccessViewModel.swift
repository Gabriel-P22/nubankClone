//
//  SignUpSuccessViewModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation

protocol SignUpSuccessViewModelProtocol {
    func getUser() -> UserModel?
}

class SignUpSuccessViewModel: SignUpSuccessViewModelProtocol {
    
    var userModel: UserModelProtocol?
    
    init(userModel: UserModelProtocol?) {
        self.userModel = userModel
    }
    
    func getUser() -> UserModel? {
        return userModel?.getUser()
    }
}
