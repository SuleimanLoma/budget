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
    func fetchTransactions() {
        
    }
}
