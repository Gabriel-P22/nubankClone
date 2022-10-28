//
//  Preview.swift
//  nubankApp
//
//  Created by Gabriel Paschoal on 28/10/22.
//

import Foundation
import SwiftUI

struct Preview: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController
    
    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return self.viewControllerBuilder()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) { }
}
