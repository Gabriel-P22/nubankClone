//
//  FirebaseAdapterDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class FirebaseAdapterDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(FirebaseAdapterProtocol.self) {_ in FirebaseAdapter() }
        
        AppContainer.getContainer()?.register(FirebaseAdapterUseCaseProtocol.self) { _ in FirebaseAdapterUseCase(
            oauth: AppContainer.getContainer()?.resolve(OAuthProtocol.self),
            firebaseAdapter: AppContainer.getContainer()?.resolve(FirebaseAdapterProtocol.self),
            userModel: AppContainer.getContainer()?.resolve(UserModelProtocol.self))
        }
    }
}
