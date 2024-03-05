//
//  Pascals Triangle View.swift
//  AlgorithmChallenge Day One
//
//  Created by Angel Olvera on 04/03/24.
//

import SwiftUI

struct Pascals_Triangle: View {
    
    var body: some View {
        PascalsTriangleView()
    }
}

struct PascalsTriangleView: View {
    @StateObject private var viewModel = PascalsTriangleViewModel()
    
    var body: some View {
            VStack {
                Text("Generate Pascal's Triangle")
                    .font(.title)
                    .padding()

                TextField("Enter number of rows", text: $viewModel.numRowsInput)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .padding()

                Button(action: viewModel.generateTriangle) {
                    Text("Generate Triangle")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }

                if !viewModel.pascalsTriangle.isEmpty {
                    Text("Result:")
                        .font(.headline)
                        .padding()

                    ForEach(viewModel.pascalsTriangle, id: \.self) { row in
                        HStack {
                            ForEach(row, id: \.self) { number in
                                Text("\(number)")
                                    .padding(.horizontal, 8)
                            }
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        }
}

#Preview {
    Pascals_Triangle()
}
