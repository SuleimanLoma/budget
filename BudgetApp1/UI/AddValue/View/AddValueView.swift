//
//  AddValueView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 1/3/25.
//

import SwiftUI

struct AddValueView: View {
    @StateObject private var viewModel = AddValueViewModel()
    var body: some View {
        VStack {
            Group {
                TextField("Name", text: $viewModel.name)
                    
                TextField("Amount", text: $viewModel.amount)
            }
            .foregroundStyle(.black)
            .fontWeight(.medium)
            .font(.system(size: 20))
            .padding()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(4)
            .padding(.horizontal)
            
            Spacer()
            
            Button {
                viewModel.save()
            } label: {
                Text("Save")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.blue)
                    .cornerRadius(16)
            }
            .padding()
        }
    }
}

#Preview {
    AddValueView()
}
