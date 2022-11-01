//
//  Auth.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import Firebase

protocol OAuthProtocol {
    func createUser(email: String, password: String, completion: @escaping (UserModelProtocol?, String?) -> Void)
    func sendUser(name: String?)
}

class OAuth: OAuthProtocol {
    var auth: Auth?
    var userModel: UserModelProtocol? = AppContainer.getContainer()?.resolve(UserModelProtocol.self) ?? nil
    
    init(auth: Auth? = Auth.auth()) {
        self.auth = auth
    }
    
    func createUser(email: String, password: String, completion: @escaping (UserModelProtocol?, String?) -> Void) {
        auth?.createUser(withEmail: email, password: password) { [weak self] (result, error) in
            guard let self = self else { return }
            
            if error != nil {
                completion(nil, nil)
                print("Error in SignUp")
            } else {
                self.userModel?.withEmail(email: result?.user.email)
                completion(self.userModel, "\(result)")
            }
        }
    }
    
    func sendUser(name: String?) {
        let value = [
            "name": name
        ]
        
        _ = Firestore.firestore()
            .collection("users")
            .document(auth?.currentUser?.uid ?? "Error")
            .setData(value)
        
        self.userModel?.withName(name: name)
    }
}
