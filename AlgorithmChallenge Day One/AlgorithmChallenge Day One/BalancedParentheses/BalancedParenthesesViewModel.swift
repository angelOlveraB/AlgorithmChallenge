//
//  BalancedParenthesesViewModel.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 28/02/24.
//

import SwiftUI

class BalancedParenthesesViewModel: ObservableObject {
    @Published var userInput: String = ""
    @Published var displayedText: String = ""
    
    func isValidParentheses() {
            let isValid = checkParenthesesBalance(userInput)
            displayedText = isValid ? "valid" : "invalid"
        }

    private func checkParenthesesBalance(_ input: String) -> Bool {
            var stack: [Character] = []
            let openParentheses: Set<Character> = ["("]
            let mapping: [Character: Character] = [")": "("]

            for char in input {
                if openParentheses.contains(char) {
                    stack.append(char)
                } else if let openParen = mapping[char] {
                    let topElement = stack.popLast() ?? "#"
                    if openParen != topElement {
                        return false
                    }
                }
            }

            return stack.isEmpty
        }

//    func isValidParentheses() {
//        var stack: [Character] = []
//        let mapping: [Character: Character] = ["(": ")"]
//
//        for char in userInput {
//            if let openParen = mapping[char] {
//                let topElement = stack.popLast() ?? "#"
//                if openParen != topElement {
//                    displayedText = "invalid"
//                    return
//                }
//            } else {
//                stack.append(char)
//            }
//        }
//
//        displayedText = stack.isEmpty ? "valid" : "invalid"
//    }
}


