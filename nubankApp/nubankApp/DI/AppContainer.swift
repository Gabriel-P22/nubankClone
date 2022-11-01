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
        AppContainer.getContainer()?.register(OAuthProtocol.self) { _ in OAuth() }
        AppContainer.getContainer()?.register(AuthUseCaseProtocol.self) { _ in AuthUseCase(oauth: AppContainer.getContainer()?.resolve(OAuthProtocol.self)) }
        AppContainer.getContainer()?.register(SignUpViewModelProtocol.self) { _ in SignUpViewModel(userCase: AppContainer.getContainer()?.resolve(AuthUseCaseProtocol.self)) }
    }
    
    public static func getContainer() -> Container? {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            return delegate.container
        }
        return nil
    }
}
