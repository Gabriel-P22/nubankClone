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
    func login(email: String, password: String)
    
    func getToken() -> String?
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
    
    func getToken() -> String? {
        return auth?.currentUser?.uid ?? "Error"
    }
    
    func login(email: String, password: String) {
        auth?.signIn(withEmail: email, password: password) { user, error in
            
            if error != nil {
                print("error in login")
            } else {
                if user == nil {
                    print("Problem in login... Try again later")
                } else {
                    print("Success in login \(user?.user.uid)")
                }
            }
        }
    }
}
