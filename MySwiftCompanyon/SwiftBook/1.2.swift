
import Foundation

private func ОператорыКонкантенацияИнтерополяция() {
    
    var a = 9
    var b = 4

    a + b
    a - b
    a * b
    a / b


    a += b // a = a + b / 20
    a -= b // a = a - b / 10
    a *= b // 100
    a /= b // 10
    
    //: ### Оператор остатка от деления:
    a % b
    -a % b
    a % -b


    //: ### Оператор присваивания:
    a = 5
    b = 10
    let c = a + b

    print("a равно \(a)")
    print("b равно \(b)")
    print("c равно \(c)")


    a = b

    print("a равно \(a)")
    //: ### Операторы сравнения:
    let d = a == b // true
    a != b // false
    a > b // false
    a < b // false
    a >= b // true
    a <= b // true


    //: ### Оператор логического НЕ:

    let accessDeniedMessage = "ACCESS DENIED"
    let welcomeMessage = "Welcome!"

    let allowedEntry = false // Разрешение на вход отсутствует

    if !allowedEntry {
        print(accessDeniedMessage)
    }

    //: ### Оператор логического И:

    let enteredDoorCode = true
    let passedRetinaScane = false

    if enteredDoorCode && passedRetinaScane {
        print(welcomeMessage)
    } else {
        print(accessDeniedMessage)
    }

    //: ### Оператор логического ИЛИ:
    let hasDoorKey = false
    let knowsOverridePassword = true

    if hasDoorKey || knowsOverridePassword {
        print(welcomeMessage)
    } else {
        print(accessDeniedMessage)
    }

    if (enteredDoorCode && passedRetinaScane) || hasDoorKey || knowsOverridePassword {
        print(welcomeMessage)
    } else {
        print(accessDeniedMessage)
    }

    //: ### Строки и символы:
    let name: String
    var surname = String()
    var email = ""

    name = "Eugeniya"
    surname = "Bruyko"

    //var aboutCourse = """
    //Мы изучаем курс "Основы программирвания на Swift".
    //Сейчас у нас урок номер 2.
    //До окончания курса осталось 6 урокв.
    //Ведущая курса.
    //"""
    //print(aboutCourse)
    //: ### Конкатенация строк:
    let fullName = name + " " + surname
    var myName = "My name is "

    // myName = myName + fullName
    myName += fullName


    //: ### Интерполяция строк
    let lessonNumber = 2
    let numberOfLessons = 8

    var aboutCourse = """
    Мы изучаем курс "Основы программирвания на Swift".
    Сейчас у нас урок номер \(lessonNumber).
    До окончания курса осталось \(numberOfLessons - lessonNumber) урокв.
    Ведущая курса \(fullName).
    """
    print(aboutCourse)


    let exclamationMark: Character = "!"

}
