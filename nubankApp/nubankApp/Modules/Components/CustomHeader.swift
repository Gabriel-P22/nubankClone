//
//  CustomHeader.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class CustomHeader: UIView {
    
    lazy var container: UIView = {
        let container = UIView()
        container.translatesAutoresizingMaskIntoConstraints = false
        return container
    }()
    
    lazy var title: UILabel = {
        let label = UILabel()
        label.font = AppFont.instanciate.MulishBlackFont22px
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = AppColors.instanciate.lightGray
        return label
    }()
    
    func render() {
        addSubview(container)
        container.addSubview(title)
        makeContraints()
    }
    
    func makeContraints() {
        NSLayoutConstraint.activate([
            container.topAnchor.constraint(equalTo: topAnchor),
            container.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            container.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            container.bottomAnchor.constraint(equalTo: bottomAnchor),
            container.heightAnchor.constraint(equalToConstant: 44),
            
            title.topAnchor.constraint(equalTo: container.topAnchor, constant: 12),
            title.leadingAnchor.constraint(equalTo: container.leadingAnchor),

        ])
    }
    
    func setTitleText(text: String?) {
        title.text = text
    }
}
