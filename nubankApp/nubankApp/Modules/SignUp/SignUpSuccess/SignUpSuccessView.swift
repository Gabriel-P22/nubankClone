//
//  SignUpSuccessView.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 01/11/22.
//

import Foundation
import UIKit

class SignUpSuccessView: UIView {
    
    lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        container.backgroundColor = AppColors.instanciate.lightPurple
        return container
    }()
    
    lazy var labelSuccess: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = AppFont.instanciate.MulishMediumFont22px
        text.textColor = AppColors.instanciate.lightGray
        text.numberOfLines = 5
        text.textAlignment = .center
        return text
    }()
    
    lazy var backHomeButton: MainButton = {
        let btn = MainButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setTitle("Go back Home", for: .normal)
        btn.setTitleColor(AppColors.instanciate.white, for: .normal)
        btn.backgroundColor = AppColors.instanciate.secondPurple
        btn.layer.cornerRadius = 12
        return btn
    }()
    
    func render() {
        addSubview(container)
        container.addSubview(labelSuccess)
        container.addSubview(backHomeButton)
        makeContraints()
    }
    
    func makeContraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor),
            container.trailingAnchor.constraint(equalTo: trailingAnchor),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            labelSuccess.centerXAnchor.constraint(equalTo: container.centerXAnchor),
            labelSuccess.centerYAnchor.constraint(equalTo: container.centerYAnchor),
            labelSuccess.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            labelSuccess.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            backHomeButton.bottomAnchor.constraint(equalTo: container.bottomAnchor, constant: -60),
            backHomeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            backHomeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            backHomeButton.heightAnchor.constraint(equalToConstant: 38),
        ])
    }
    
    func setSuccessMessage(name: String, email: String) {
        let message = "Hello: \(name), your account has been created! Look your email: \(email)"
        labelSuccess.text = message
    }
    
    func setButtonTitle(title: String) {
        backHomeButton.setTitle(title, for: .normal)
    }
}
