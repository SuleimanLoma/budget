//
//  ContentView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 26/2/25.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    ForEach(viewModel.transactions, id:\.self) { model in
                        CellView(
                            sourceType: model.sourceType ?? "",
                            name: model.name ?? "",
                            amount: model.amount ?? ""
                        )
                    }
                }
            }
            .navigationTitle("Main")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Main")
                        .foregroundColor(.another)
                        .font(.title2)
                        .fontWeight(.semibold)
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AddValueView()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.another)
                    }
                }
            }
            .background(Color(UIColor.secondarySystemBackground))
            .onAppear {
                viewModel.fetchTransactions()
            }
        }
    }
}


