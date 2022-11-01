//
//  Auth.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import Firebase

protocol OAuthProtocol {
    func createUser(email: String, password: String)
}

class OAuth: OAuthProtocol {
    var auth: Auth?
    
    init(auth: Auth? = Auth.auth()) {
        self.auth = auth
    }
    
    func createUser(email: String, password: String) {
        auth?.createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print("Error in SignUp")
            } else {
                print("Success \(result)")
            }
        }
    }
}
