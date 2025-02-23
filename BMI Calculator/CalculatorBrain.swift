//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Gerard Causse on 2/16/25.
//  Copyright © 2025 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue =  weight / pow(height, 2)
        
        let advice: String
        let color: UIColor
        if bmiValue < 18.5 {
            advice = "Eat more pies!"
            color = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        } else if bmiValue > 24.9 {
            advice = "Eat less pies!"
            color = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
        } else {
            advice = "Fit as a fiddle!"
            color = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
        
        bmi = BMI(value: bmiValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Somethign went wrong"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}


