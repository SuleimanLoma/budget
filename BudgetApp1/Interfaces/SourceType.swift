//
//  SourceType.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 6/3/25.
//

import Foundation
//ForEach Hashable
//CaseIterable создает массивы из энама
enum SourceType: Hashable, CaseIterable {
    case income
    case expense
    
    var title: String {
        switch self {
        case .income:
            "Income"
        case .expense:
            "Expense"
        }
    }
}

