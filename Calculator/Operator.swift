//
//  Operator.swift
//  Calculator
//
//  Created by Alex Ivanescu on 13.09.2022.
//

import Foundation

class Operator {
    
    var op: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String) {
        
        if string == "+" {
            self.op = (+)
        } else if string == "-" {
            self.op = (-)
        } else if string == String("\u{00d7}") {
            self.op = (*)
        } else {
            self.op = (/)
            self.isDivision = true
        }
        
    }
}
