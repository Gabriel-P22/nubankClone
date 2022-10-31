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
    var customView: SignUpView? = SignUpView()
    
    init(viewModel: SignUpViewModelProtocol?) {
        super.init(nibName: nil, bundle: nil)
        self.viewModel = viewModel
    }
    
    override func viewDidLoad() {
        view = customView
        customView?.render()
        view.backgroundColor = .red
        customView?.tableView.dataSource = self
        customView?.tableView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SignUpViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell(style: .default, reuseIdentifier: "normal")
    }
}
