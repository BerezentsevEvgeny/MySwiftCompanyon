//
//  Protocols.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 30.03.2022.
//

// Протоколы - програмные публичные интерфейсы

// Все свойства и методы должны быть публичными

// Родительский класс подписывается под протокол и реализует его а протокол имеет имя исходя из дочернего со свойством delegate
// Вызов метода происходит в дочернем а его реализация в родительском

// Custom string convertible
// var description: String {
//       "Some text"
// }

// Equatable
// func == (lhs: String, rhs: String) -> Bool {
//       lhs.name == rhs.name
// }

// Comparable
// func < (lhs: Int, rhs: Int) -> Bool {
//       lhs.value < rhs.value
// }
// employees.sorted(by: $0 < $1)
