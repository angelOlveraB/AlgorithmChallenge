//
//  BalancedParentheses.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 28/02/24.
//

import SwiftUI

struct BalancedParentheses: View {
    @StateObject private var viewModel = BalancedParenthesesViewModel()

    var body: some View {
        BalancedParenthesesView(viewModel: viewModel)
    }
}

struct BalancedParenthesesView: View {
    @ObservedObject var viewModel: BalancedParenthesesViewModel
    
    var body: some View {
        VStack {
            Text("Escribe algo:")
                .font(.headline)
                .padding()

            TextField("Ingresa texto", text: $viewModel.userInput)

            Button(action: {
                viewModel.isValidParentheses()
            }) {
                Text("Mostrar")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }

            Spacer()

            Text("Texto ingresado:")
                .font(.headline)
                .padding()

            Text(viewModel.displayedText)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
        .navigationBarTitle("Balanced parentheses")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct BalancedParentheses_Previews: PreviewProvider {
    static var previews: some View {
        BalancedParentheses()
    }
}


//struct AlgorithmDayOne: View {
//    @StateObject private var viewModel = AlgorithmDayOneViewModel()
//
//    var body: some View {
//        AlgorithmDayOneView(viewModel: viewModel)
//    }
//}
