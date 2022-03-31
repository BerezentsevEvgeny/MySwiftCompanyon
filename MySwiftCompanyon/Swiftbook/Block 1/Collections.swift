//
//  Collections.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 18.03.2022.
//

// Array and their functions var someCollection: [String] = []
// .append .removeLast .insert( at: ) .contains .count .isempty
// .joined(separator: ", ")

// Перебор двух массивов в одном цикле
//  for (button,answer) in zip(buttons,answers) {
// }

// Set and their functions  var someCollection: Set<Int> = []
// .contains .insert .sorted(by: <)

// Dictionary var someCollection: [String: Int] = [:]  or Dictionary[String: Int]
// someCollection[key] = [value]
// .removeValue(for key: )  .count .removeAll

// var animals: [String: String] - словарь для сортировки
// var sortedAnimals = animals.sorted { $0.value > $1.value }
// guard let mostFrequent = sortedAnimals.first?.key else {return}


// Кортежи - коллекции которые группируют несколько значений в одно составное
// У каждого из них может быть свой тип данных

var weather = (4, "Sunny")
// Элементы проиндексированы
// weather.1 первое хначение, weather.2 второе и тд

// Пример с именами
// var weather = (temp: 4, condition: "Sunny") тогда можно обращаться к элементу по имени

let (temp, condition) =  weather
// теперь стало доступно temp равное 4 и condition равное "Sunny"

// let (temp, _ ) =  weather  не нужный элемент можно заменить подчеркиванием

// Используются например при перерборе словарей в цикле или при возврате функцией нескольких значений
