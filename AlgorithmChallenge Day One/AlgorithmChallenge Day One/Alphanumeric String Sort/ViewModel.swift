//
//  ViewModel.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 27/02/24.
//

import SwiftUI

class AlgorithmDayOneViewModel: ObservableObject {
    @Published var userInput: String = ""
    @Published var displayedText: String = ""

    func sortText() {

        let sortedCharacters = userInput.sorted { (char1, char2) -> Bool in
                // Numbers go after Letters
                if char1.isLetter && char2.isNumber {
                    return true
                } else if char1.isNumber && char2.isLetter {
                    return false
                }

                // Uppercase letters go after Lowercase
                if char1.isLowercase && char2.isUppercase {
                    return true
                } else if char1.isUppercase && char2.isLowercase {
                    return false
                }

                // Odd numbers go before Even numbers
                if char1.isNumber && char2.isNumber {
                    if Int(String(char1))! % 2 != 0 && Int(String(char2))! % 2 == 0 {
                        return true
                    } else if Int(String(char1))! % 2 == 0 && Int(String(char2))! % 2 != 0 {
                        return false
                    }
                }

                // Any character that is not a letter or number should go after the letters and numbers
                let isChar1LetterOrNumber = char1.isLetter || char1.isNumber
                let isChar2LetterOrNumber = char2.isLetter || char2.isNumber

                return isChar1LetterOrNumber && !isChar2LetterOrNumber
            }
        
        displayedText = String(sortedCharacters)
    }
}

