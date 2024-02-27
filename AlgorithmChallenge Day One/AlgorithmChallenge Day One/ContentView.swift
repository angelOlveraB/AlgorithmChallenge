//
//  ContentView.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 27/02/24.
//

import SwiftUI

struct AlgorithmDayOne: View {
    @StateObject private var viewModel = AlgorithmDayOneViewModel()

    var body: some View {
        ContentView(viewModel: viewModel)
    }
}

struct ContentView: View {
    @ObservedObject var viewModel: AlgorithmDayOneViewModel

    var body: some View {
        VStack {
            Text("Escribe algo:")
                .font(.headline)
                .padding()

            TextField("Ingresa texto", text: $viewModel.userInput, onEditingChanged: { _ in
                viewModel.updateButtonState()
            })

            Button(action: {
                viewModel.showText()
            }) {
                Text("Mostrar")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .disabled(viewModel.isButtonEnabled)

            Spacer()

            Text("Texto ingresado:")
                .font(.headline)
                .padding()

            Text(viewModel.displayedText)
                .multilineTextAlignment(.center)
                .padding()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmDayOne()
    }
}
