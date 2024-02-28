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
        AlgorithmDayOneView(viewModel: viewModel)
    }
}

struct AlgorithmDayOneView: View {
    @ObservedObject var viewModel: AlgorithmDayOneViewModel

    var body: some View {
        VStack {
            Text("Escribe algo:")
                .font(.headline)
                .padding()

            TextField("Ingresa texto", text: $viewModel.userInput)

            Button(action: {
                viewModel.sortText()
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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmDayOne()
    }
}
