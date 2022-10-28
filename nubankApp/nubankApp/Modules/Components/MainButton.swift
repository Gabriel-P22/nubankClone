//
//  MainButton.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import UIKit

class MainButton: UIButton {
    func configButton(backgroundColor: UIColor, layerValue: CGFloat = 12) {
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.cornerRadius = layerValue
        self.backgroundColor = backgroundColor
    }
    
    func configTitle(title: String, titleColor: UIColor) {
        setTitle(title, for: .normal)
        setTitleColor(titleColor, for: .normal)
    }
    
}
