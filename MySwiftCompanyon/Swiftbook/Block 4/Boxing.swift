//
//  Boxing.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 11.04.2022.
//

class Box<T> {
    typealias Listener = (T) -> Void
    
    var listener: Listener?   // - коллбэк
    var value: T {            // - изменяемое свойство
        didSet {
            listener?(value)
        }
    }
    
    init(value: T) {
        self.value = value
    }
    
    func bind(listener: @escaping Listener) {   // - метод запуска
        self.listener = listener
        listener(value)
    }
}
