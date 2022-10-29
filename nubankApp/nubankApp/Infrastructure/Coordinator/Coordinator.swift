//
//  Coordinator.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    var navigationControler: UINavigationController?
    
    func eventCurrend(with type: Event) {
//        switch type {
//            
//        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = LoginViewController()
        vc.coordinator = self
        navigationControler?.setViewControllers([vc], animated: false)
    }
    
}
