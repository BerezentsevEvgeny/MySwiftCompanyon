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

// При работе с Enum рекомендуется использоввать Switch
// при этом можно не использовать "default" ветку

// ИСХОДНЫЕ ЗНАЧЕНИЯ
 enum Countries: String {
        case usa = "USA"
        case russia = "RUSSIA"
 }
// let usa = Country.usa
// print(usa.rawValue)  "USA"

// ИНИЦИАЛИЗАТОР при наличиии исходного значения
let country = Countries(rawValue: "USA") //будет опционалом так как возможен  nil

// Связанные значения(ассоциированые параметры)
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
