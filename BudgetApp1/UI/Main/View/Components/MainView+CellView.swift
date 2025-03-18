//
//  MainView+CellView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 13/3/25.
//

import SwiftUI

extension MainView {
    struct CellView: View {
        let sourceType: String
        let name: String
        let amount: String
        
        var body: some View {
            HStack {
                Text(name)
                    .lineLimit(1)
                
                Spacer()
                
                Text(amount)
                    .fontWeight(.semibold)
                    .foregroundStyle(sourceType == "income" ? .green : .red)
                
                Image(systemName: sourceType == "income" ? "arrow.up" : "arrow.down")
                    .foregroundStyle(Color.secondary.opacity(0.5))
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 8)
            .background(Color(UIColor.systemBackground))
            .font(.system(size: 20))
            .cornerRadius(12)
            .padding(.horizontal, 16)
        }
    }
}

#Preview {
    VStack {
        Spacer()
        MainView.CellView(sourceType: "income", name: "blabla", amount: "333")
        MainView.CellView(sourceType: "expense", name: "bl3312321321321321312321321abla", amount: "311212,21")
        Spacer()
    }
    .background(Color(UIColor.secondarySystemBackground))
}
