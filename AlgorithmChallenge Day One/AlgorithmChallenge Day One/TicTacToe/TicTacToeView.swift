//
//  TicTacToeView.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 29/02/24.
//

import SwiftUI

struct TicTacToe: View {
    @StateObject private var viewModel = TicTacToeViewModel()
    
    var body: some View {
        TicTacToeView(viewModel: viewModel)
    }
}

struct TicTacToeView: View {
    @ObservedObject var viewModel: TicTacToeViewModel
    
    var body: some View {
        VStack {
            Text("Enter Moves (e.g., '0,0 2,0 1,1 2,1 2,2')")
                .padding()
            
            TextField("Enter moves separated by space", text: $viewModel.movesString)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Find Winner") {
                self.viewModel.findWinner()
            }
            .padding()
            
            Text("Result: \(viewModel.resultText)")
                .padding()
        }
        .padding()
        .navigationBarTitle("Find Winner on a Tic Tac Toe Game")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    TicTacToeView(viewModel: TicTacToeViewModel())
}
