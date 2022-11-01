//
//  CustomTableView.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

class CustomTableView: UITableView {
    public func setUp() {
        translatesAutoresizingMaskIntoConstraints = false
        isScrollEnabled = true
        alwaysBounceVertical = false
        register(EmptyCell.self, forCellReuseIdentifier: EmptyCell.self.identifier)
    }
}
