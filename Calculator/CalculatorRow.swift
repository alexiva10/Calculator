//
//  CalculatorRow.swift
//  Calculator
//
//  Created by Alex Ivanescu on 13.09.2022.
//

import SwiftUI

let columnCount = 4

struct CalculatorRow: View {
    
    var labels = ["", "", "", ""]
    var colors: [Color] = [.gray, .gray, .gray, .green]
    
    var body: some View {
        
        // Calculator button for each coloumn
        HStack (spacing: 10) {
            // Select from labels and colors
            ForEach(0..<columnCount) { index in
                CalculatorButton(label: labels[index], color: colors[index])
            }
        }
        
    }
}

struct CalculatorRow_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorRow(labels: ["1", "2", "3", "+"])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}
