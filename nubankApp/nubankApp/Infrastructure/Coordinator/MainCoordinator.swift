//
//  MainCoordinator.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit

enum Event {
    case signUp
    case signUpSuccess
}

protocol Coordinator {
    var navigationControler: UINavigationController? { get set }
    
    func eventCurrend(with type: Event)
    func start()
} 

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
