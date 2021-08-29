//
//  Core Data.swift
//  MySwiftCompanyon
//
//  Created by Евгений Березенцев on 18.08.2021.
//

import CoreData


     // Saving before App close в AppDelegate
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

// Либо можно инициализировать контекст
private let viewContext: NSManagedObjectContext

private init() {
    viewContext = persistentContainer.viewContext
}

// Получаем данные по запросу
func fetchData(completion: (Result<[Task], Error>) -> Void) {
    
    let fetchRequest: NSFetchRequest<Task> = Task.fetchRequest()
    
    do {
        let tasks = try viewContext.fetch(fetchRequest)
        completion(.success(tasks))
    } catch let error {
        completion(.failure(error))
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


