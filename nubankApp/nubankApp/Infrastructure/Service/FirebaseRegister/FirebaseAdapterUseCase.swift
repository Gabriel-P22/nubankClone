//
//  FirebaseAdapterUseCase.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation

protocol FirebaseAdapterUseCaseProtocol {
    func sendUser(name: String)
}

class FirebaseAdapterUseCase: FirebaseAdapterUseCaseProtocol {
    
    var oauth: OAuthProtocol?
    var firebaseAdapter: FirebaseAdapterProtocol?
    var userModel: UserModelProtocol?
    
    init(
        oauth: OAuthProtocol?,
        firebaseAdapter: FirebaseAdapterProtocol?,
        userModel: UserModelProtocol?
    ) {
        self.oauth = oauth
        self.firebaseAdapter = firebaseAdapter
        self.userModel = userModel
    }
    
    func sendUser(name: String) {
        let collection = "users"
        let document = oauth?.getToken()
        let headers = ["name": name]
        
        firebaseAdapter?.setCollections(collection: collection, document: document, headers: headers)
        userModel?
            .withName(name: name)
    }
}
