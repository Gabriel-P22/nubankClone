//
//  Auth.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import Firebase

protocol OAuthProtocol {
    func createUser(email: String, password: String, completion: @escaping (UserModelProtocol?, String?) -> String?)
}

class OAuth: OAuthProtocol {
    var auth: Auth?
    var userModel: UserModelProtocol? = AppContainer.getContainer()?.resolve(UserModelProtocol.self) ?? nil
    
    init(auth: Auth? = Auth.auth()) {
        self.auth = auth
    }
    
    func createUser(email: String, password: String, completion: @escaping (UserModelProtocol?, String?) -> String?) {
        auth?.createUser(withEmail: email, password: password) { (result, error) in
            if error != nil {
                completion(nil, nil)
                print("Error in SignUp")
            } else {
                self.userModel?.withEmail(email: result?.user.email)
                completion(self.userModel, "Success \(result)")
            }
        }
    }
}
