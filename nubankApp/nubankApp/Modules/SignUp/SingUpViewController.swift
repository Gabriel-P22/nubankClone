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
        viewModel?.setUpComponents()
    }
    
    override func viewDidLoad() {
        view = customView
        customView?.render()
        customView?.tableView.dataSource = self
        customView?.tableView.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func cancel() {
        super.coordinator?.start()
    }
    
}

extension SignUpViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.listComponents.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = CustomHeader()
        header.setTitleText(text: "SignUp")
        header.render()
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = ButtonStack()
        footer.cancelButton.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        footer.render()
        return footer
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let components: CustomComponentProtocol = viewModel?.listComponents[indexPath.row] else { return UITableViewCell() }
        
        switch components.type {
        case .email:
            guard let cell = components as? Questions else { return UITableViewCell() }
            cell.render()
            return cell
            
        case .password:
            guard let cell = components as? Questions else { return UITableViewCell() }
            cell.render()
            return cell
            
        default:
            return UITableViewCell()
        }
        
    }
}
