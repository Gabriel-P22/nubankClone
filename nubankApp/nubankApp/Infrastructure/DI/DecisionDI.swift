//
//  DecisionDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class DecisionDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(DecisionViewModelProtocol.self) { _ in DecisionViewModel() }
    }
}
