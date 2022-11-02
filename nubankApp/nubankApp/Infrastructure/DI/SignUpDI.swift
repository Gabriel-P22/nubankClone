//
//  SignUpDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class SignUpDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(SignUpViewModelProtocol.self) { _ in SignUpViewModel(
            oauthUseCase: AppContainer.getContainer()?.resolve(AuthUseCaseProtocol.self),
            firebaseUseCase: AppContainer.getContainer()?.resolve(FirebaseAdapterUseCaseProtocol.self))
        }
        
        AppContainer.getContainer()?.register(SignUpSuccessViewModelProtocol.self, factory: { _ in
            SignUpSuccessViewModel(userModel: AppContainer.getContainer()?.resolve(UserModelProtocol.self))
        })
    }
}
