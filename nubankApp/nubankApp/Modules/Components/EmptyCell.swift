//
//  EmptyCell.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 31/10/22.
//

import Foundation
import UIKit

@objc public class EmptyCell: UITableViewCell {
    static let identifier: String = "EmptyCell"
    
    lazy var emptyView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        return view
    }()
    
    public override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        isUserInteractionEnabled = true
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func render() {
        addSubview(emptyView)
        makeConstraints()
    }
    
    internal func makeConstraints() {
        NSLayoutConstraint.activate([
            emptyView.leadingAnchor.constraint(equalTo: leadingAnchor),
            emptyView.trailingAnchor.constraint(equalTo: trailingAnchor),
            emptyView.topAnchor.constraint(equalTo: topAnchor),
            emptyView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
}
