//
//  PascalsTriangleUnitTest.swift
//  AlgorithmChallenge Day OneTests
//
//  Created by Angel Olvera on 04/03/24.
//

import XCTest
@testable import AlgorithmChallenge_Day_One

final class PascalsTriangleUnitTest: XCTestCase {

    var viewModel: PascalsTriangleViewModel!

        override func setUp() {
            super.setUp()
            viewModel = PascalsTriangleViewModel()
        }

        override func tearDown() {
            viewModel = nil
            super.tearDown()
        }

        func testGenerateTriangleWithValidInput() {
            viewModel.numRowsInput = "5"
            viewModel.generateTriangle()
            XCTAssertFalse(viewModel.pascalsTriangle.isEmpty, "Pascals triangle should not be empty")
        }

        func testGenerateTriangleWithInvalidInput() {
            viewModel.numRowsInput = "abc"
            viewModel.generateTriangle()
            XCTAssertTrue(viewModel.pascalsTriangle.isEmpty, "Pascals triangle should be empty for invalid input")
        }

        func testGenerateWithValidInput() {
            let numRows = 3
            let result = viewModel.generate(numRows)
            XCTAssertEqual(result, [[1], [1, 1], [1, 2, 1]], "Generated Pascal's triangle does not match expected result")
        }

        func testGenerateWithInvalidInput() {
            let numRows = -1
            let result = viewModel.generate(numRows)
            XCTAssertTrue(result.isEmpty, "Generated Pascal's triangle should be empty for invalid input")
        }

}
