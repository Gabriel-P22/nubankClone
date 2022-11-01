//
//  SignUpSuccessViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import UIKit

class SignUpSuccessViewController: BaseViewController {
    
    var viewModel: SignUpSuccessViewModelProtocol?
    var customView: SignUpSuccessView? = SignUpSuccessView()
    
    override func viewDidLoad() {
        view = customView
        customView?.render()
        if let user = viewModel?.getUser() {
            customView?.setSuccessMessage(name: user.name, email: user.email)
            customView?.setButtonTitle(title: "Go Back Home")
            customView?.backHomeButton.addTarget(self, action: #selector(goToHomeScreen), for: .touchUpInside)
        }
    }
    
    init(viewModel: SignUpSuccessViewModelProtocol?) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func goToHomeScreen() {
        super.coordinator?.start()
    }
}
