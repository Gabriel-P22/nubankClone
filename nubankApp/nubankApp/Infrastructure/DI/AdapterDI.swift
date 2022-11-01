//
//  AdapterDI.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import Swinject

class AdapterDI {
    public static func registerContainer() {
        AppContainer.getContainer()?.register(SignUpCellAdapterProtocol.self) {_ in SignUpCellAdapter() }
    }
}

