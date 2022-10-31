//
//  AppContainer.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import Swinject

class AppContainer {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(LoginViewModelProtocol.self) { _ in LoginViewModel() }
        AppContainer.getContainer()?.register(SignUpViewModelProtocol.self) { _ in SignUpViewModel() }
    }
    
    public static func getContainer() -> Container? {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            return delegate.container
        }
        return nil
    }
}
