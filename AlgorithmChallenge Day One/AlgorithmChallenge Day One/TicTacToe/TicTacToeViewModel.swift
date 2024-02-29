//
//  TicTacToeViewModel.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 29/02/24.
//

import SwiftUI

enum TicTacToeResult {
    case A, B, Draw, Pending
}

enum TicTacToeError: Error {
    case invalidMoves
}

class TicTacToeViewModel: ObservableObject {
    @Published var movesString: String = ""
    @Published var resultText: String = ""

        func findWinner() {
            let movesArray = movesString
                .split(separator: " ")
                .map { $0.split(separator: ",").compactMap { Int($0) } }

            let result = findTicTacToeWinner(movesArray)

            switch result {
            case .A:
                resultText = "Player A wins"
            case .B:
                resultText = "Player B wins"
            case .Draw:
                resultText = "It's a draw"
            case .Pending:
                resultText = "Game is still ongoing"
            }
        }

    func findTicTacToeWinner(_ moves: [[Int]]) -> TicTacToeResult {
        do {
            try validateMoves(moves)
        } catch {
            return .Pending
        }

        var grid = Array(repeating: Array(repeating: "", count: 3), count: 3)
        
        for (index, move) in moves.enumerated() {
            let player = (index % 2 == 0) ? "A" : "B"
            grid[move[0]][move[1]] = player
            
            if checkWinner(grid, row: move[0], col: move[1]) {
                return (player == "A") ? .A : .B
            }
        }
        
        if moves.count == 9 {
            return .Draw
        } else {
            return .Pending
        }
    }
    
    func validateMoves(_ moves: [[Int]]) throws {
        let uniqueMoves = Set(moves)
        
        guard moves.count >= 1 && moves.count <= 9 &&
              moves.allSatisfy({ $0.count == 2 && $0.allSatisfy({ (0...2).contains($0) }) }) &&
              uniqueMoves.count == moves.count else {
            throw TicTacToeError.invalidMoves
        }
    }
    
    func checkWinner(_ grid: [[String]], row: Int, col: Int) -> Bool {
        let player = grid[row][col]
        // Check row
        if grid[row].allSatisfy({ $0 == player }) {
            return true
        }
        // Check column
        if grid.allSatisfy({ $0[col] == player }) {
            return true
        }
        // Check diagonal
        if (row == col || row + col == 2) &&
           (grid[0][0] == player && grid[1][1] == player && grid[2][2] == player ||
            grid[0][2] == player && grid[1][1] == player && grid[2][0] == player) {
            return true
        }
        return false
    }
    
}
