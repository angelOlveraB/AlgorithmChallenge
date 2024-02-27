//
//  ViewModel.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 27/02/24.
//

import SwiftUI

class AlgorithmDayOneViewModel: ObservableObject {
    @Published var userInput: String = ""
    @Published var isButtonEnabled: Bool = false
    @Published var displayedText: String = ""

    func updateButtonState() {
        isButtonEnabled = !userInput.isEmpty
    }

    func showText() {
        displayedText = userInput
    }
}

