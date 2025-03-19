//
//  MainViewModel.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 1/3/25.
//

import Foundation

class MainViewModel: ObservableObject {
    private let coreDataProvider: CoreDataProvider = CoreDataProvider.shared
    @Published var transactions: [TransactionModel] = []
    @Published var listId: String = UUID().uuidString
    
    func fetchTransactions() {
        let results = coreDataProvider.fetchTransactions()
        
        Task { @MainActor in
            self.transactions = results
            self.listId = UUID().uuidString
        }
    }
}
