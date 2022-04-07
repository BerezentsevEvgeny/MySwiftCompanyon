//
//  Storage.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 03.04.2022.
//

// Кэширование изображений

// 1) Создаем запрос
//class ImageManager {
//    static let shared = ImageManager()
//
//    private init() {}
//
//    func fetchImage(from url: URL, completion: @escaping (Data, URLResponse) -> Void) {
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            guard let data = data, let response = response else {
//                print(error?.localizedDescription ?? "No description")
//                return
//            }
//
//            guard url == response.url else { return }
//            completion(data, response)
//        }
//        .resume()
//    }
//
// 2) Делаем расширение для UIImage
//class CustomImageView: UIImageView {
//
//    Основной метод
//    func fetchImage(from url: String) {
//        guard let imageURL = URL(string: url) else {
//            image = UIImage(named: "moviePlaceholder")
//            return
//        }
//
//        //Проверяем есть ли запись в кэше
//        if let cachedImage = loadFromCache(from:  imageURL) {
//            image = cachedImage
//            return
//        }
//
//        //Если нет - загружаем из сети и сохраняем в кэш
//        ImageManager.shared.fetchImage(from: imageURL) { [unowned self] data, response in
//            DispatchQueue.main.async {
//                self.image = UIImage(data: data)
//            }
//
//            self.saveToCache(with: data, and: response)
//        }
//
//    }
//
//    Метод сохранения
//    private func saveToCache(with data: Data, and reponse: URLResponse) {
//
//        guard let urlResponse = reponse.url else { return }
//        let request = URLRequest(url: urlResponse)                  // Запрос
//
//        let cachedResponse = CachedURLResponse(response: reponse, data: data)  // Кэш из запроса
//
//        URLCache.shared.storeCachedResponse(cachedResponse, for: request)
//
//    }
//
//    Метод загрузки
//    private func loadFromCache(from url: URL) -> UIImage? {
//        let request = URLRequest(url: url)
//
//        if let cachedResponse = URLCache.shared.cachedResponse(for: request) {
//            return UIImage(data: cachedResponse.data)
//        }
//
//        return nil
//    }
//
//}
