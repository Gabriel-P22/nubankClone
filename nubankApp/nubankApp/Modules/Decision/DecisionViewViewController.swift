//
//  DecisionViewViewController.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit

class DecisionViewController: BaseViewController {
    private var viewModel: DecisionViewModelProtocol?
    private let customView: DecisionView = DecisionView()
    
    init(viewModel: DecisionViewModelProtocol? = AppContainer.getContainer()?.resolve(DecisionViewModelProtocol.self) ?? nil) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        view = customView
        customView.makeConfig()
        customView.register.addTarget(self, action: #selector(signUp), for: .touchUpInside)
    }
    
    @objc func signUp() {
        super.navigationController?.navigationItem.hidesBackButton = true
        super.coordinator?.eventCurrend(with: .signUp)
    }
    
}
