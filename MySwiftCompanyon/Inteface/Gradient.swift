//
//  Gradient.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 14.07.2021.
//

import Foundation

var gradient: CAGradientLayer = {
    let gradient = CAGradientLayer()
    gradient.type = .axial
    gradient.colors = [
        UIColor.red.cgColor,
        UIColor.purple.cgColor,
        UIColor.cyan.cgColor
    ]
    gradient.locations = [0, 0.25, 1]
    return gradient
}()

override func viewDidLoad() {
    super.viewDidLoad()
    
    gradient.frame = view.bounds
    view.layer.insertSublayer(gradient, at: 0)
}
