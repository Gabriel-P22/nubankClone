//
//  SingUpViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class SignUpViewController: BaseViewController {
    var viewModel: SignUpViewModelProtocol?
    
    init(viewModel: SignUpViewModelProtocol?) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
