//
//  SignUpView.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class SignUpView: UIView {
    lazy var tableView: CustomTableView = {
        let tableView = CustomTableView()
        tableView.separatorStyle = .none
        tableView.backgroundColor = AppColors.instanciate.lightPurple
        tableView.setUp()
        return tableView
    }()
    
    func render() {
        addSubview(tableView)
        makeContraints()
    }
    
    func makeContraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
}
