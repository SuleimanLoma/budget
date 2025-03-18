//
//  AddValueView+InputsView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 6/3/25.
//

import SwiftUI

extension AddValueView {
    struct InputsView: View {
        @ObservedObject var viewModel: AddValueViewModel
        
        var body: some View {
            Group {
                    
                TextField("Discription", text: $viewModel.name)
                    
                TextField("Amount", text: $viewModel.amount)
            }
            .foregroundStyle(.black)
            .fontWeight(.medium)
            .font(.system(size: 20))
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(12)
            .padding(.horizontal)
        }
    }
}

#Preview {
    AddValueView.InputsView(viewModel: .init())
}
