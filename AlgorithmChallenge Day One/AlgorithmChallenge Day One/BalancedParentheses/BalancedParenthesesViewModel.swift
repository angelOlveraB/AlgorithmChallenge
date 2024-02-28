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
        var stack: [Character] = []
        let mapping: [Character: Character] = [")": "(", "}": "{", "]": "["]

        for char in userInput {
            if let openParen = mapping[char] {
                let topElement = stack.popLast() ?? "#"
                if openParen != topElement {
                    displayedText = "invalid"
                }
            } else {
                stack.append(char)
            }
        }

        displayedText = stack.isEmpty ? "valid" : "invalid"
    }
/*
    // Examples
    print(isValidParentheses("()"))  // Output: valid
    print(isValidParentheses("(hello, world)"))  // Output: valid
    print(isValidParentheses("Random text (as this) is ok()."))  // Output: valid
    print(isValidParentheses(")("))  // Output: invalid
    print(isValidParentheses("(Hello (,) world (!))"))  // Output: valid
    print(isValidParentheses(")()("))  // Output: invalid
    print(isValidParentheses(")()(("))  // Output: invalid
 */
}


