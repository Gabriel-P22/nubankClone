//
//  AppContainer.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import Swinject

class AppConainter {
    public static let shared: Container = {
        let container = Container()
        container.register(LoginViewModelProtocol.self) { _ in LoginViewModel() }
        return container
    }()
}
