
import Foundation
import UIKit

class Енум {
    
    
    enum Countries: String {
        case usa = "USA"
        case russia = "Russia"
        case china
    }
    
    var country = Countries.usa
//    print("case value: \(country.rawValue)")
//    country = .china
//    print("case name: \(country)")
//    print("case value: \(country.rawValue)")
    
    
    

    //
    enum Planet: Int {
        case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    }

    let earth = Planet.earth

//    print("Erth is the \(earth.rawValue) planat from the sun")
    
    // Инициализация
//    if let possiblePlanet = Planet(rawValue: 7) {
//        print("The seventh planent is \(possiblePlanet)")
//    }
    
    // Связанные значения (ассоциированные параметры)
    enum Weekdays {
        case workday(message: String, time: Int)
        case weekday(messege: String)
    }

    var anyDay = Weekdays.workday(message: "Set alarm to", time: 8)
    
    func setAlarm(for weekday: Weekdays) {
        switch weekday {
        case let .workday(message, time):
            print("\(message) \(time)")
        case let .weekday(messege):
            print(messege)
        }
    }
    
//    setAlarm(for: anyDay)






}
    
    
    

