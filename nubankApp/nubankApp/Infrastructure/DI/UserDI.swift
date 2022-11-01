//
//  UserDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class UserDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(
            UserModelProtocol.self,
            factory: { _ in UserModelBuilder()}
        ).inObjectScope(.container)
    }
}
