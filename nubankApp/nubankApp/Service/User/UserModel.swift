//
//  UserModel.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import Firebase

protocol UserModelProtocol {
    var email: String { get set }
}

class UserModel: UserModelProtocol {
    var email: String = ""

}
