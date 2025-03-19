//
//  CoreDataProvider.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 8/3/25.
//

import CoreData
import Foundation

class CoreDataProvider {
    let container = PersistenceController.shared.container
    static let shared = CoreDataProvider()
    
    func addTransaction(name: String, amount: String, sourceType: String) {
        let context = container.viewContext
        let transaction = TransactionModel(context: context)
        transaction.name = name
        transaction.amount = amount
        transaction.sourceType = sourceType
        
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
    
    func fetchTransactions() -> [TransactionModel] {
        let context = container.viewContext
        let fetchRequest = TransactionModel.fetchRequest()
        
        do {
            let transactions = try context.fetch(fetchRequest)
            return transactions
        } catch {
            print(error)
            return []
        }
    }
    func edit(
        id: NSManagedObjectID,
        name: String,
        amount: String,
        sourceType: String
    ) {
        let context = container.viewContext
        do {
            let model =  try context.existingObject(with: id) as? TransactionModel
            model?.name = name
            model?.amount = amount
            model?.sourceType = sourceType
            
            try context.save()
        } catch {
            print(error)
        }
    }
    func delete(model: TransactionModel) {
        let context = container.viewContext
        context.delete(model)
        do {
            try context.save()
        } catch {
            print(error)
        }
    }
}
