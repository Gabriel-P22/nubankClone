//
//  UserModelProtocol.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

protocol UserModelProtocol {
    var userModel: UserModel { get set }
    
    func withEmail(email: String?) -> UserModelProtocol
    func withName(name: String?) -> UserModelProtocol
    func getUser() -> UserModel?
}
