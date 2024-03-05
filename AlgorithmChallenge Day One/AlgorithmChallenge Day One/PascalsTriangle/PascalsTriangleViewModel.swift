//
//  PascalsTriangleViewModel.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 04/03/24.
//

import SwiftUI


class PascalsTriangleViewModel: ObservableObject {
    @Published var numRowsInput = ""
    @Published var pascalsTriangle: [[Int]] = []

    func generateTriangle() {
        guard let numRows = Int(numRowsInput), numRows > 0 else {
            // Handle invalid input
            return
        }

        pascalsTriangle = generate(numRows)
    }
    
    func generate(_ numRows: Int) -> [[Int]] {
        guard numRows > 0 else {
            return []
        }
        
        var result: [[Int]] = [[1]]
        
        for i in 1..<numRows {
            var row: [Int] = [1]
            
            for j in 1..<i {
                let sum = result[i - 1][j - 1] + result[i - 1][j]
                row.append(sum)
            }
            
            row.append(1)
            result.append(row)
        }
        
        return result
    }
}


