//
//  LoginDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class LoginDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(LoginViewModelProtocol.self) { _ in LoginViewModel() }
    }
    
}
