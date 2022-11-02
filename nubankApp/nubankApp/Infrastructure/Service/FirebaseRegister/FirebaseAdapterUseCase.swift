//
//  FirebaseAdapterUseCase.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation

protocol FirebaseAdapterUseCaseProtocol {
    func sendUser(idade: String, name: String, nascimento: String, sexo: String, telefone: String)
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
    
    func sendUser(idade: String, name: String, nascimento: String, sexo: String, telefone: String) {
        let collection = "users"
        let document = oauth?.getToken()
        let headers = [
            "idade": idade,
            "name": name,
            "nascimento": nascimento,
            "sexo": sexo,
            "telefone": telefone
        ]
        
        firebaseAdapter?.setCollections(collection: collection, document: document, headers: headers)
        userModel?
            .withName(name: name)
    }
}
