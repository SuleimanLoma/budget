//
//  Per.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 8/3/25.
//
import CoreData

struct PersistenceController {
    static let shared = PersistenceController() //single tone global'naya to4ka

    let container: NSPersistentContainer

    init() {
        container = NSPersistentContainer(name: "DataModel") // замените на имя вашего .xcdatamodeld файла
        container.loadPersistentStores { description, error in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        }
    }
}
