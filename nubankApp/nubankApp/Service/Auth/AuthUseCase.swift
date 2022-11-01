//
//  AuthUseCase.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation

protocol AuthUseCaseProtocol {
    func createUser(email: String, password: String)
}

class AuthUseCase: AuthUseCaseProtocol {
    var oauth: OAuthProtocol?
    
    init(oauth: OAuthProtocol?) {
        self.oauth = oauth
    }
    
    func createUser(email: String, password: String) {
        oauth?.createUser(email: email, password: password)
    }
}
