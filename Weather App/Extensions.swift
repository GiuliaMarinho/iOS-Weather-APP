//
//  Extensions.swift
//  Weather App
//
//  Created by Giulia Marinho on 23/05/24.
//

import UIKit

extension UIColor {
    static let contrastColor = UIColor(named: "contrastColor")
    static let firstColor = UIColor(named: "firstColor")
    static let softGrayColor = UIColor(named: "softGrayColor")
}

extension UIView {
    func setupConstraintsToParent(_ parent: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leftAnchor.constraint(equalTo: parent.leftAnchor),
            self.rightAnchor.constraint(equalTo: parent.rightAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor),
        ])
    }
}
