//
//  Flag.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 29.08.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    private init() {}
    
    // Срабатывает при превом входе и меняет значение bool
    func createTempData(_ completion: @escaping () -> Void) {
        if !UserDefaults.standard.bool(forKey: "done") {
            
            UserDefaults.standard.set(true, forKey: "done") // это значение меняется..
            
  // ..выполняем необходимые действия один раз
            
//            let shoppingList = TaskList()
//            shoppingList.name = "Shopping List"
//
//            let moviesList = TaskList(value: ["Movies List", Date(), [["Best film ever"], ["The best of the best", "Must have", Date(), true]]])
//
//            let milk = Task()
//            milk.name = "Milk"
//            milk.note = "2L"
//
//            let bread = Task(value: ["Bread", "", Date(), true])
//            let apples = Task(value: ["name": "Apples", "note": "2Kg"])
//
//            shoppingList.tasks.append(milk)
//            shoppingList.tasks.insert(contentsOf: [bread, apples], at: 1)
//
//            DispatchQueue.main.async {
//                StorageManager.shared.save(taskLists: [shoppingList, moviesList])
//                completion()
//            }
        }
    }
}
