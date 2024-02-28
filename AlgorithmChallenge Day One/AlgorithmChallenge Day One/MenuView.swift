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
            }
            .navigationBarTitle("Daily Algorithm Challenge")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}