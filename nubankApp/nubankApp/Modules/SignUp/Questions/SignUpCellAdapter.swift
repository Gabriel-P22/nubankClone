//
//  SignUpCellAdapter.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation

protocol SignUpCellAdapterProtocol {
    func getHeader(text: String?) -> CustomHeader
    func getFooter() -> ButtonStack
}

class SignUpCellAdapter: SignUpCellAdapterProtocol {
    
    func getHeader(text: String?) -> CustomHeader {
        let header = CustomHeader()
        header.setTitleText(text: text)
        header.render()
        return header
    }
    
    func getFooter() -> ButtonStack {
        let footer = ButtonStack()
        footer.render()
        return footer
    }
}
