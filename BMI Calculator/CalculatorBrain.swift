//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gerard Causse on 2/16/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmi: Float = 0.0
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmi =  round(weight / pow(height, 2) * 10) / 10.0
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi)
    }
}
