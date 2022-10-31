//
//  BaseViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class BaseViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.hidesBackButton = true
    }
    
}
