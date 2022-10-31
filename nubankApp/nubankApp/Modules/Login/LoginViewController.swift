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
    private var viewModel: LoginViewModelProtocol?
    private let customView: LoginView = LoginView()
    
    init(viewModel: LoginViewModelProtocol? = AppContainer.getContainer()?.resolve(LoginViewModelProtocol.self) ?? nil) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view = customView
        view.backgroundColor = AppColors.instanciate.white
        customView.makeConfig()
    }
}
