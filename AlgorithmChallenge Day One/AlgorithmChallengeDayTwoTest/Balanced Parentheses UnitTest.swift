//
//  Balanced Parentheses UnitTest.swift
//  AlgorithmChallenge Day OneTests
//
//  Created by Angel Olvera on 28/02/24.
//

import XCTest
@testable import AlgorithmChallenge_Day_One

final class Balanced_Parentheses_UnitTest: XCTestCase {
    
    func testValidParentheses() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = "()"
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "valid")
    }
    
    func testInvalidParenthesesWithText() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = "(hello, world)"
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "valid")
    }
    
    func testRandomTextInput() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = "Random text (as this) is ok()."
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "valid")
    }
    
    func testMismatchedParentheses() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = ")("
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "invalid")
    }
    
    func testHelloWorld() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = "(Hello (,) world (!))"
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "valid")
    }
    
    func testMissMatch() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = ")()("
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "invalid")
    }
    
    func testInvalidInput() {
        let viewModel = BalancedParenthesesViewModel()
        viewModel.userInput = "())(()"
        viewModel.isValidParentheses()
        XCTAssertEqual(viewModel.displayedText, "invalid")
    }
}
