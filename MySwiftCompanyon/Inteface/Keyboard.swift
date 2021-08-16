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

// Скрытие при пролистывании
tableView.keyboardDismissMode = .onDrag


// Действие по нажатию  Return (Done)
Подписать контроллер на UITextFieldDelegate

textField.delegate = self

func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    print("Hello")
    return true
}
