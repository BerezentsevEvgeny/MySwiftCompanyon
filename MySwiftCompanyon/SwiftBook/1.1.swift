
import Foundation

private func ТипыДанныхПриведение() {
    
    var teamSport = "Футбол"


    print("\(teamSport) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(teamSport) это не просто вид спорта, \(teamSport) - это стиль жизни, \(teamSport) - это философия. \(teamSport), вид спорта для сильных духом и целеустремленных людей. Я люблю \(teamSport). \(teamSport) мой любимый вид спорта!\n")

    teamSport = "Американский футбол"
    print(teamSport)

    print("\(teamSport) - это командный вид спорта с мячом, в котором целью является забить мяч в ворота соперника. \(teamSport) это не просто вид спорта, \(teamSport) - это стиль жизни, \(teamSport) - это философия. \(teamSport), вид спорта для сильных духом и целеустремленных людей. Я люблю \(teamSport). \(teamSport) мой любимый вид спорта!")
    

// MARK: - Стандартные типы
    
    var userName = ""
    print("Hello, \(userName)")

    
    var age = 40
    print("My name is \(userName), i am \(age) old")

    
    var someNumber = 10.9999

    var someFloat = 0.0

    someFloat = 121.123444
    someFloat = 1221.123444
    someFloat = 12321.123444
    someFloat = 123421.123444
    someFloat = 1234521.123444

    let boolean = true

// MARK: - Приведение типов
    
    // Новая константа с типом Double
    let castIntToDouble = Double(age) + someNumber

    // Новая константа с типом Int
    let castDoubleToInt = age + Int(someNumber)

    // Приведение числовых значений к строковым данным
    let myAge = "I am "
    let castIntToString = myAge + String(age) + " years old"

    //Приведение строковых данных к числовым значениям

    let someString = "10g"
    let castStringToInt = age + (Int(someString) ?? 0)
    
    
    
}
