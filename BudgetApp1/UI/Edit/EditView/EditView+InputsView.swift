//
//  EditView+InputsView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 19/3/25.
//

import SwiftUI

extension EditView {
    struct InputsView: View {
        @ObservedObject var viewModel: EditViewModel
        
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
