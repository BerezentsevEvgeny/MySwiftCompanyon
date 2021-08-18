//
//  Shadow.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 18.08.2021.
//

import Foundation

// У каждой Cell  есть contentView
// Совет - в него добавлять контент при помощи addSubview()

private func setupCell() {
    contentView.addSubview(posterImage)
    // Скругление в contentView
    contentView.clipsToBounds = true
    contentView.layer.cornerRadius = 10
    // Тень в layer
    layer.shadowColor = UIColor.black.cgColor
    layer.shadowRadius = 6
    layer.shadowOpacity = 0.6
    layer.shadowOffset = .zero
    
    posterImage.translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
        posterImage.leadingAnchor.constraint(equalTo: leadingAnchor),
        posterImage.trailingAnchor.constraint(equalTo: trailingAnchor),
        posterImage.topAnchor.constraint(equalTo: topAnchor),
        posterImage.bottomAnchor.constraint(equalTo: bottomAnchor)
    ])
}
