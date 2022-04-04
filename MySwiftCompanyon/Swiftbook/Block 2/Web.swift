//
//  Web.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 01.04.2022.
//

// Создаваемая модель-структура должна содержать только те поля которые присутствуют в json, при этом в модели может присутствовать геттер использующий эти поля например для описания объекта

// Конвертирование JSON из snake_case в camelCase:
// При помощи let decoder = JSONDecoder()
// decoder.keyDecodingStrategy = .convertFromSnakeCase
// Или вручную
//  enum CodingKeys: String, CodingKeys {
//   var camelCase = "snake_case"
// }

// POST Запрос
// var courses = [keys: vsluues]
// guard let coursesData = try? JSONSerialization.data(withJSONobject: courses, options: []) else {return}   // Лучше через do catch, для объектов используется JSONencoder()
// var urlRequest = URLRequest(url: url)
// urlRequest.method = "POST"
// urlRequest.body = coursesData
// reguest.addValue ("application/json; charset=utf-8",forHTTPHeaderField: "Content-Type") - настройка передачи словаря(оказалось не совсем верный формат возвращает)
// URLSession.shared.dataTask(urlRequest) { .... }  отправляет и возвращает данные из переданного словаря

// Alamofire

//  AF.request(URLS. exampleTwo.rawValue,method: .get)
//            .validate()
//            .responseJSON { dataResponse in
//       //или.responseDecodable(of: ModelType.self) { response in
//                 switch dataResponse.result {
//                 case .success (let value) :
//                           guard let coursedata = value as? [[String: Any]] else {return}
//                           здесь уже перебираем массив со словарем и тп
//                 case .failure (let error):
//                             print (error)


// MARK: Generics and Error handling

//struct User: Decodable {
//    let name: String
//    let company: Company
//}
//
//struct Company: Decodable {
//    let name: String
//}
//
//enum APIError: Error {
//    case invalidURL
//    case invalidResponseStatus
//    case dataTaskError
//    case dataCorrupted
//    case decodingError
//}
//
//func decodeJson<T: Decodable>(dataDecodingStratrgy: JSONDecoder.DateDecodingStrategy = .deferredToDate
//                              ,keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys
//                              ,completon: @escaping (Result<T,APIError>) -> Void) {
//    guard let url = URL(string: "https://jsonplaceholder.typicode.com/users") else {
//        completon(.failure(.invalidURL))
//        return
//    }
//
//    let task = URLSession.shared.dataTask(with: url) { data, response, error in
//        guard
//            let response = response as? HTTPURLResponse,
//            response.statusCode == 200
//        else  {
//            completon(.failure(.invalidResponseStatus))
//            return
//        }
//        guard
//            error == nil
//        else {
//            completon(.failure(.dataTaskError))
//            return
//        }
//        guard
//            let data = data
//        else {
//            completon(.failure(.dataCorrupted))
//            return
//        }
//
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = keyDecodingStrategy
//
//        do {
//            let deccodedData = try JSONDecoder().decode(T.self, from: data)
//            completon(.success(deccodedData))
//        } catch {
//            completon(.failure(.decodingError))
//        }
//    }
//    task.resume()
//}
//
//decodeJson { (result: Result<[User],APIError>) in
//    switch result {
//    case .success(let users):
//        print(users)
//    case .failure(let error):
//        print(error)
//    }
//}
