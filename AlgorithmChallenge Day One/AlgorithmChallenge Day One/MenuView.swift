//
//  MenuView.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 28/02/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: AlgorithmDayOneView(viewModel: AlgorithmDayOneViewModel())) {
                    Text("Alphanumeric String Sort")
                }
                NavigationLink(destination: BalancedParentheses()) {
                    Text("Balanced Parentheses")
                }
                NavigationLink(destination: TicTacToe()) {
                    Text("Find Winner on a Tic Tac Toe Game")
                }
                NavigationLink(destination: Pascals_Triangle()) {
                    Text("Pascal’s Triangle")
                }
            }
            .navigationBarTitle("Daily Algorithm Challenge")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
