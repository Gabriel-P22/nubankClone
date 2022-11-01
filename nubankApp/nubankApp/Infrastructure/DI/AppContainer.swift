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
        LoginDI.registerContainer()
        AuthDI.registerContainer()
        UserDI.registerContainer()
        SignUpDI.registerContainer()
        AdapterDI.registerContainer()
    }
    
    public static func getContainer() -> Container? {
        if let delegate = UIApplication.shared.delegate as? AppDelegate {
            return delegate.container
        }
        return nil
    }
}
