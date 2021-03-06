//
//  Enum.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 22.03.2022.
//

 enum Weekdays {
       case monday
       case tuesday
 }

// При инициализации указываем тип
// var weekday = Weekday.monday
// а потом можно выбирать значение через точку
//weekday = .tuesday

// По умолчанию кейсы имеют значения своего названия
// Можно создавать внутри одного enum другие enum и там их использовать

// При работе с Enum рекомендуется использоввать Switch
// при этом можно не использовать "default" ветку

// MARK: - ИСХОДНЫЕ ЗНАЧЕНИЯ (Связанные значения)
 enum Countries: String {
        case usa = "USA"
        case russia = "RUSSIA"
 }
// let usa = Country.usa
// print(usa.rawValue)  "USA"

// ИНИЦИАЛИЗАТОР при наличиии исходного значения
let country = Countries(rawValue: "USA") //будет опционалом так как возможен  nil

// MARK: - Ассоциированые параметры

enum Alarms {
    case weekday(message: String, time: Int)
    case workday(message: String)
}

let alarm = Alarms.weekday(message: "Get up", time: 10)

//func set(alarm: Alarms) {
//    switch alarm {
//    case .weekday(message: let message, time: let time):
//        //some code
//    case .workday(message: let message):
//        //..some code
//    }
//}

//сокращенный аналог
//func set(alarm: Alarms) {
//    switch alarm {
//    case let .weekday(message, time):
//        //some code
//    case let .workday(message):
//        //..some code
//    }
//}

// MARK: - Cвойства внутри перечислений могут быть только вычисляемыми
enum Animal {
    case dog
    case cat
    
    var description: String {
        switch self {
        case .dog:
            return "Its a dog"
        case .cat:
            return "Its a cat"
        }
    }
}

// MARK: - Могут содержать внутри себя функции а так же обращаться к себе внутри через self
