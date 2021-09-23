//
//  Realm.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 29.08.2021.
//

import Foundation


1 //Creating Models
class Task: Object {
    @objc dynamic var name = ""
    @objc dynamic var note = ""
    @objc dynamic var date = Date()
    @objc dynamic var isComplete = false
}

class TaskList: Object {
    @objc dynamic var name = ""
    @objc dynamic var date = Date()
    let tasks = List<Task>()
}

2 //Base Operations
class StorageManager {
    static let shared = StorageManager()
    
    let realm = try! Realm() // Точка входа
    
    private init() {}
    
    // Сохранение
    func save(taskList: [TaskList]) {
        write {
            realm.add(taskList)
        }
    }
    
    private func write(_ comletion: () -> Void) {  // Используем для  save edit delete
        do {
            try realm.write {
               comletion()
            }
        } catch let error {
            print(error)
        }
    }
    
}

3 // Работая с экземплярами классов сохраняем измененния при помощи save

4 //  Получаем обЪекты нужного класса из базы
  private var taskList: Results<TaskList>!

override func viewDidLoad() {
    super.viewDidLoad()
    
    taskList = StorageManager.shared.realm.objects(TaskList.self)
}



