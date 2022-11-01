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
        AppContainer.getContainer()?.register(SignUpViewModelProtocol.self) { _ in SignUpViewModel(userCase: AppContainer.getContainer()?.resolve(AuthUseCaseProtocol.self)) }
    }
}
