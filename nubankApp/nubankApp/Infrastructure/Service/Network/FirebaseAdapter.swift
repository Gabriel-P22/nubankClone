//
//  FirebaseAdapter.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Firebase

protocol FirebaseAdapterProtocol {
    func setCollections(collection: String?, document: String?, headers: [String: Any])
}

class FirebaseAdapter: FirebaseAdapterProtocol {
    
    var firestore = Firestore.firestore()
    
    func setCollections(collection: String?, document: String?, headers: [String: Any]) {
        firestore
            .collection(collection ?? "Error")
            .document(document ?? "Error")
            .setData(headers)
    }
    
}
