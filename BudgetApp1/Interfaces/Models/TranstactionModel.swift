//
//  Transtactions.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 8/3/25.
//

import CoreData
import Foundation

@objc(Transaction)
public class TransactionModel: NSManagedObject {
    
    @NSManaged public var name: String
    @NSManaged public var amount: String
    @NSManaged public var sourceType: String
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<TransactionModel> {
        return NSFetchRequest<TransactionModel>(entityName: "TransactionModel")
    }
}

//promezhuto4niy tip 4tob svyazat
