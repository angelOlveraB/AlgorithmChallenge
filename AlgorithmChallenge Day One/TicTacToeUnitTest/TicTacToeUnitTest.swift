//
//  TicTacToeUnitTest.swift
//  AlgorithmChallenge Day OneTests
//
//  Created by Angel Olvera on 29/02/24.
//

import XCTest
@testable import AlgorithmChallenge_Day_One

final class TicTacToeUnitTest: XCTestCase {
    
    func testExample1() {
        let viewModel = TicTacToeViewModel()
        viewModel.movesString = "0,0 2,0 1,1 2,1 2,2"
        viewModel.findWinner()
        XCTAssertEqual(viewModel.resultText, "Player A wins")
    }
    
    func testExample2() {
        let viewModel = TicTacToeViewModel()
        viewModel.movesString = "0,0 1,1 0,1 0,2 1,0 2,0"
        viewModel.findWinner()
        XCTAssertEqual(viewModel.resultText, "Player B wins")
    }
    
    func testExample3() {
        let viewModel = TicTacToeViewModel()
        viewModel.movesString = "0,0 1,1 2,0 1,0 1,2 2,1 0,1 0,2 2,2"
        viewModel.findWinner()
        XCTAssertEqual(viewModel.resultText, "It's a draw")
    }

}
