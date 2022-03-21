//
//  Classes.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 21.03.2022.
//

// Создание класса:
//   - Описывает один объект
//   - Имя существительное
//   - Интерфейс и инкапсуляция
//   - Один метод - одна задача

// Проверка ссылок на идентичность ===

//  пустой инициализатор   init() { }

// метод класса - инициализатор init(name: String, age: Int) {
//                               self.name = name
//                               self.age = age }

// либо с параметрами по умолчанию init(name: String = "Tim", age = 0) {
//                                      self.name = name
//                                      self.name = age
// в таком случае удобство в том что можно инициализировать только одно свойство, а второе останется со значением по умолчанию

// Инкапсуляция  (приватные свойства и методы + геттер, сеттер)

// Наследование (дочерние классы видят св-ва и методы родителя, а родители не видят св-ва дочерних

// Полиморфизм  (возможность иметь разную реализацию при одинаковом названии. Используется ключевое слово override
//  override init() {
//           super.init()
//           someNewAction() }
