//
//  EditViewModel.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 19/3/25.
//

import Foundation

class EditViewModel: ObservableObject {
    private let coreDataProvider: CoreDataProvider = CoreDataProvider.shared
    
    @Published var name: String
    @Published var amount: String
    @Published var sourceType: SourceType
    
    let item: TransactionModel
    
    init(item: TransactionModel) {
        self.item = item
        self.name = item.name ?? ""
        self.amount = item.amount ?? ""
        self.sourceType = SourceType(rawValue: item.sourceType ?? "") ?? .income
    }
    func save() {
        coreDataProvider.edit(id: item.objectID, name: name, amount: amount, sourceType: sourceType.rawValue)
    }
    
    func delete() {
        coreDataProvider.delete(model: item)
    }
}
