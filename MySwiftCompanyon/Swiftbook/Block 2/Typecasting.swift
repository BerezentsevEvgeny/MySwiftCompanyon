//
//  Typecasting.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 28.03.2022.
//

// Контроль типа (is проверяет на соответствие типу)

// let pet = getPet(_ pet: Animal)
// if pet is Dog {
// print("its a dog")
// }

// Приведение типов  (as? приводит к типу,при этом делает опционалом,поэтому нужно его извлекать)

//  if let dog = pet as? Dog {
//    walk(with: Dog)
//  }


// Переходы по Segue

// Програмный переход
// Если сегвей делается не с элемента а по performSegue(with identifier: String) (лучик тянется от верхней левой части экрана),
// то необходимо задать идентификатор сегвея(segue identifier)

// Подготовка к переходу
// override func prepareForSegue(segue: UIStoryboardSegue) {
//  guard let settingsVC = segue.destination as? SettingsViewController { else return }

//  C помощью sender из метода performSegue в prepareForSegue можно передать какое либо значение, скастив Any? до кужного типа - sender as? Type


// @IBAction func unwindFor(segue: UIStoryboardSegue) {
//  guard let settingsVC = segue.source as? SettingsViewController { else return }


