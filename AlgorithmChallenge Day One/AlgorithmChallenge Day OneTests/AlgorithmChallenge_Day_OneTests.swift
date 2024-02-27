//
//  AlgorithmChallenge_Day_OneTests.swift
//  AlgorithmChallenge Day OneTests
//
//  Created by Angel Olvera on 27/02/24.
//

import XCTest
@testable import AlgorithmChallenge_Day_One

final class AlgorithmChallenge_Day_OneTests: XCTestCase {

        func testSortText() {
            let viewModel = AlgorithmDayOneViewModel()
            viewModel.userInput = "abeCD4®"
            viewModel.sortText()
            XCTAssertEqual(viewModel.displayedText, "abeCD4®")

            viewModel.userInput = "a1b2C3"
            viewModel.sortText()
            XCTAssertEqual(viewModel.displayedText, "abC132")

            viewModel.userInput = "ABCdef"
            viewModel.sortText()
            XCTAssertEqual(viewModel.displayedText, "defABC")
        }

}
