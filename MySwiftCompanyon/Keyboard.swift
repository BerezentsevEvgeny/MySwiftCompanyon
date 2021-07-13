//
//  Keyboard.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 13.07.2021.
//

import Foundation

// Скрытие клавиатуры по тапу
override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    userNameTF.resignFirstResponder()
    passwordTF.resignFirstResponder()
}
