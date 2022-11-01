//
//  SuccessButtonQuestion.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class SuccessButtonQuestion: CustomCell, CustomComponentProtocol {
    var type: ComponentsType?
    
    lazy var container: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var questionSuccessButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.titleLabel?.textAlignment = .center
        btn.layer.cornerRadius = 12
        return btn
    }()
    
    func setTitleQuestion(value: String) {
        questionSuccessButton.setTitle(value, for: .normal)
    }
    
    func setButtonColor(color: UIColor) {
        questionSuccessButton.setTitleColor(color, for: .normal)
    }
    
    func setButtonBackgroundColor(color: UIColor) {
        questionSuccessButton.backgroundColor = color
    }
    
    func render() {
        addSubview(container)
        container.addSubview(questionSuccessButton)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            container.heightAnchor.constraint(equalToConstant: 44),
            
            questionSuccessButton.topAnchor.constraint(equalTo: container.topAnchor),
            questionSuccessButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            questionSuccessButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            questionSuccessButton.bottomAnchor.constraint(equalTo: container.bottomAnchor),
        ])
    }
    
}
