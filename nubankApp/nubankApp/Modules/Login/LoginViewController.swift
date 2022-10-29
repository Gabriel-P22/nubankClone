//
//  LoginViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    var viewModel: LoginViewModelProtocol?
    
    let customView: LoginView = LoginView()
    
    override func viewDidLoad() {
        view = customView
        view.backgroundColor = AppColors.instanciate.white
        customView.makeConfig()
    }
}
