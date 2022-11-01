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
        switch type {
        case .signUp:
            goToSignIn()
        }
    }
    
    func start() {
        var vc: UIViewController & Coordinating = LoginViewController()
        vc.coordinator = self
        navigationControler?.setViewControllers([vc], animated: true)
    }
    
    private func goToSignIn() {        
        var vc: UIViewController & Coordinating = SignUpViewController(viewModel: AppContainer.getContainer()?.resolve(SignUpViewModelProtocol.self))
        vc.coordinator = self
        navigationControler?.navigationItem.hidesBackButton = true
        navigationControler?.pushViewController(vc, animated: true)
    }
    
}
