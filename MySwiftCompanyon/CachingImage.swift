//
//  CachingImage.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 15.08.2021.
//

import UIKit

// Наследуем-расширяем UIImage (Затем используем CharacterImageView.fetchImage для получения картинки )
class CharacterImageView: UIImageView {

    func fetchImage(from url: String) {
        guard let imageURL = URL(string: url) else { return }
        
        // Использовать изображение из кеша, если есть
        if let cachedImage = getChachedImage(from: imageURL) {
            image = cachedImage
            return
        }
        
        // Если изображения нет то мы загрузим его из сети
        ImageManager.shared.fetchImage(from: imageURL) { data, response in
            DispatchQueue.main.async {
                self.image = UIImage(data: data)
            }
            
            // Сохранить изображение в кэш
            self.seveDataToCache(with: data, and: response)
        }
    }
    
    private func seveDataToCache(with data: Data, and response: URLResponse) {
        guard let urlResponse = response.url else { return }
        let request = URLRequest(url: urlResponse)
        let cachedResponse = CachedURLResponse(response: response, data: data)
        URLCache.shared.storeCachedResponse(cachedResponse, for: request)
    }
    
    private func getChachedImage(from url: URL) -> UIImage? {
        let request = URLRequest(url: url)
        if let cachedResponse = URLCache.shared.cachedResponse(for: request) {
            return UIImage(data: cachedResponse.data)
        }
        return nil
    }
}


// Класс с методом для запроса
class ImageManager {
    static var shared = ImageManager()
    
    private init() {}
    
    func fetchImage(from url: URL, complition: @escaping (Data, URLResponse) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, let response = response else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            guard url == response.url else { return }
            
            complition(data, response)
            
        }.resume()
    }
}
