//
//  Core Data.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 18.08.2021.
//

import CoreData


     // Saving before App close
    func applicationWillTerminate(_ application: UIApplication) {
        saveContext()
    }

    // MARK: Из коробки - In AppDelegate - Core Data stack

    lazy var persistentContainer: NSPersistentContainer = {

        let container = NSPersistentContainer(name: "CoreDataDemo")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
 
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()

    // MARK: Из коробки - Core Data Saving support

    func saveContext () {
        let context = persistentContainer.viewContext
        if context.hasChanges {
            do {
                try context.save()
            } catch {

                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }

// Затем там где нужно обращаемся к контексту
private let context = StorageManager.shared.persistentContainer.viewContext // пример

// Получаем данные по запросу
private func fetchData() {
    let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
    
    do {
        taskList = try context.fetch(fetchRequest)
    } catch let error {
        print(error.localizedDescription)
    }
}

// Создаем и сохраняем новый объект

@objc private func save() {
    guard let entiyDescription = NSEntityDescription.entity(forEntityName: "Task", in: context) else {
        return
    }
    guard let task = NSManagedObject(entity: entiyDescription, insertInto: context) as? Task else { return }
    task.name = taskTextField.text
    
    if context.hasChanges {
        do {
            try context.save()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    delegate?.reloadData() // reload table view or else
}


