//
//  CustomComponentProtocol.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation

protocol CustomComponentProtocol {
    func setTitleQuestion(value: String)
    
    var type: ComponentsType? { get set }
}

public enum ComponentsType: String, CaseIterable {
    case email
    case password
}
