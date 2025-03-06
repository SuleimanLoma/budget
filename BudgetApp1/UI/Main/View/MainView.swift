//
//  ContentView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 26/2/25.
//

import SwiftUI


struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                
            }
            .navigationTitle("Main")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AddValueView()
                    } label: {
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    MainView()
}
