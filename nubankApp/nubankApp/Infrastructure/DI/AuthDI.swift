//
//  AuthDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class AuthDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(OAuthProtocol.self) { _ in OAuth() }
        AppContainer.getContainer()?.register(AuthUseCaseProtocol.self, factory: { _ in
            AuthUseCase(oauth: AppContainer.getContainer()?.resolve(OAuthProtocol.self))
        }).inObjectScope(.container)
    }
}
