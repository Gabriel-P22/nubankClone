//
//  ButtonStack.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class ButtonStack: UIView {
    
    lazy var container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var submitButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 12
        btn.setTitle("Submit", for: .normal)
        btn.setTitleColor(AppColors.instanciate.white, for: .normal)
        btn.backgroundColor = AppColors.instanciate.secondPurple
        return btn
    }()
    
    lazy var cancelButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 12
        btn.setTitle("Cancel", for: .normal)
        btn.setTitleColor(AppColors.instanciate.white, for: .normal)
        btn.backgroundColor = AppColors.instanciate.secondPurple
        return btn
    }()
    
    func render() {
        addSubview(container)
        container.addSubview(submitButton)
        container.addSubview(cancelButton)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            submitButton.topAnchor.constraint(equalTo: container.topAnchor),
            submitButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            submitButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            submitButton.heightAnchor.constraint(equalToConstant: 38),
            
            cancelButton.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 20),
            cancelButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            cancelButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            cancelButton.bottomAnchor.constraint(equalTo: container.bottomAnchor),
            cancelButton.heightAnchor.constraint(equalToConstant: 38),
        ])
    }
    
}
