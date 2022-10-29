//
//  LoginView.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit
import SwiftUI

class LoginView: UIView {
    
    lazy var loginButton: MainButton = {
        let btn = MainButton()
        btn.configButton(backgroundColor: AppColors.instanciate.secondPurple)
        btn.configTitle(title: "Começar", titleColor: .white)
        return btn
    }()
    
    lazy var register: MainButton = {
        let btn = MainButton()
        btn.configButton(backgroundColor: AppColors.instanciate.transparent)
        btn.configTitle(title: "Entrar na minha conta", titleColor: .white)
        return btn
    }()
    
    lazy var logo: UIImageView = {
        let img = UIImageView()
        img.translatesAutoresizingMaskIntoConstraints = false
        img.image = UIImage(named: "loginImg")
        img.contentMode = .scaleAspectFill
        return img
    }()
    
    func makeConfig() {
        backgroundColor = AppColors.instanciate.mainPurple
        addSubview(logo)
        addSubview(register)
        addSubview(loginButton)
        makeContraints()
    }
    
    func makeContraints() {
        
        NSLayoutConstraint.activate([
            register.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            register.centerXAnchor.constraint(equalTo: centerXAnchor),
            register.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            register.heightAnchor.constraint(equalToConstant: 50),
            
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            loginButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            loginButton.bottomAnchor.constraint(equalTo: register.topAnchor, constant: -10),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            logo.centerXAnchor.constraint(equalTo: centerXAnchor),
            logo.centerYAnchor.constraint(equalTo: centerYAnchor),
            logo.bottomAnchor.constraint(equalTo: bottomAnchor),
            logo.topAnchor.constraint(equalTo: topAnchor),
            logo.leadingAnchor.constraint(equalTo: leadingAnchor),
            logo.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
        
    }
    
}
