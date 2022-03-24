//
//  Collections.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 18.03.2022.
//

// Array and their functions var someCollection: [String] = []
// .append .removeLast .insert( at: ) .contains .count .isempty
// .joined(separator: ", ")

// Set and their functions  var someCollection: Set<Int> = []
// .contains .insert .sorted(by: <)

// Dictionary var someCollection: [String: Int] = [:]  or Dictionary[String: Int]
// someCollection[key] = [value]
// .removeValue(for key: )  .count .removeAll

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
