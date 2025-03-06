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
            InputsView(viewModel: viewModel)
            Picker("Transaction type: \(viewModel.sourceType)", selection: $viewModel.sourceType) {
                ForEach(SourceType.allCases, id: \.self) { type in
                    Text(type.title)
                        .tag(type)
                    
                }
            }
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
                    .background(Color.red)
                    .cornerRadius(16)
            }
            .padding()
        }
        .background(.linearGradient(Gradient(colors: [.red, .orange, .yellow]), startPoint: .topTrailing, endPoint: .bottom))
    }
}


#Preview {
    AddValueView()
}
