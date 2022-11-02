//
//  LoginViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import UIKit

class LoginViewController: BaseViewController {
    
    var customView: LoginView = LoginView()
    
    override func viewDidLoad() {
        view = customView
        customView.render()
    }
    
}
