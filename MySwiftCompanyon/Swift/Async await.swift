//
//  Async await.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 16.08.2021.
//

import Foundation

//MARK: - Раньше

func fetchWeatherHistory(completion: @escaping ([Double]) -> Void) {
    // Здесь мы парсим джейсон и на основе полученных данных отправляем обратно на сервер массив из 100000 элментов с типом Double в диапазоне от -10 до 30
    DispatchQueue.global().async {
        let results = (1...100_000).map { _ in Double.random(in: -10...30) }
        completion(results)
    }
}

func calculateAverageTemperature(for records: [Double], completion: @escaping (Double) -> Void) {
    // Здесь мы суммируем все элементы массива и делим полученный результат на количество его элементов, т.е. находим среднее арифметическое
    DispatchQueue.global().async {
        let total = records.reduce(0, +)
        let average = total / Double(records.count)
        completion(average)
    }
}

func upload(result: Double, completion: @escaping (String) -> Void) {
    // Здесь так же выполняем какой то сетевой код в соответсвии с полученным результатом и в конце отправляем "ОК"
    DispatchQueue.global().async {
        completion("OK")
    }
}

 // Реализация
fetchWeatherHistory { records in
    calculateAverageTemperature(for: records) { average in
        upload(result: average) { response in
            print("Server response: \(response)")
        }
    }
}

//MARK: - Новой способ

func fetchWeatherHistory() async -> [Double] {
    (1...100_000).map { _ in Double.random(in: -10...30) }
}

func calculateAverageTemperature(for records: [Double]) async -> Double {
    let total = records.reduce(0, +)
    let average = total / Double(records.count)
    return average
}

func upload(result: Double) async -> String {
    "OK"
}

// Реализация
func processWeather() async {
    let records = await fetchWeatherHistory()
    let average = await calculateAverageTemperature(for: records)
    let response = await upload(result: average)
    print("Server response: \(response)")
}
