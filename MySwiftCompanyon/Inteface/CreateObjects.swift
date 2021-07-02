//
//  CreateObjects.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 30.06.2021.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {

    var mainGame: Game?


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = mainGame?.name
        
        configureView()

    }
    

    private func configureView() {
        view.backgroundColor = .white
        
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house") // ImageView
        if let game = mainGame {
            imageView.image = game.image
        }
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        imageView.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.top.equalToSuperview().inset(150)
            maker.height.equalTo(400)
    
            maker.width.equalToSuperview()
        
        }
        
        let button = UIButton(type: .system)   // Button
        button.backgroundColor = .systemBlue
        button.setTitle("Add to List", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 20
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.width.equalToSuperview().inset(50)
            maker.centerX.equalToSuperview()
            maker.height.equalTo(50)
            maker.bottom.equalToSuperview().inset(100)
        }
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        

        

    }

    @objc private func buttonTapped() {
        print("Hello")
    }
    
    
    
}
