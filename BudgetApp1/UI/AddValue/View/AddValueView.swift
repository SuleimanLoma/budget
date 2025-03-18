//
//  AddValueView.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 1/3/25.
//

import SwiftUI

struct AddValueView: View {
    @StateObject private var viewModel = AddValueViewModel()
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack {
            InputsView(viewModel: viewModel)
            Picker("Transaction type: \(viewModel.sourceType)", selection: $viewModel.sourceType)
            {
                ForEach(SourceType.allCases, id: \.self) { type in
                    Text(type.rawValue)
                        .tag(type)
                   
                }
            }
            Spacer()
            
            Button {
                viewModel.save()
                dismiss()
            } label: {
                Text("Save")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .font(.system(size: 24))
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .background(Color.another)
                    .cornerRadius(16)
            }
            .padding()
        }
        .background(Color(UIColor.secondarySystemBackground))
        
    }
}


#Preview {
    AddValueView()
}
