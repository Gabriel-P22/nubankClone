//
//  Questions.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class Questions: CustomCell, CustomComponentProtocol {
    var type: ComponentsType?
    
    lazy var container: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var questionTitle: UILabel = {
        let text = UILabel()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.font = AppFont.instanciate.MulishMediumFont22px
        text.textColor = AppColors.instanciate.lightGray
        return text
    }()
    
    lazy var questionField: TextFieldComponent = {
        let field = TextFieldComponent()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.layer.borderWidth = 0.6
        field.layer.borderColor = AppColors.instanciate.firstMainPurple.cgColor
        field.font = AppFont.instanciate.MulishMediumFont12px
        field.layer.cornerRadius = 6
        return field
    }()
    
    func setTitleQuestion(value: String) {
        questionTitle.text = value
    }
    
    func getValue() -> String? {
        return questionField.text
    }
    
    func render() {
        addSubview(container)
        container.addSubview(questionTitle)
        container.addSubview(questionField)
        makeConstraints()
    }
    
    func makeConstraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            questionTitle.topAnchor.constraint(equalTo: container.topAnchor),
            questionTitle.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            questionTitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            questionField.topAnchor.constraint(equalTo: questionTitle.bottomAnchor, constant: 5),
            questionField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            questionField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            questionField.bottomAnchor.constraint(equalTo: bottomAnchor),
            questionField.heightAnchor.constraint(equalToConstant: 30)

        ])
    }
}
