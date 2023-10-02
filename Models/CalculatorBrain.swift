//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Joel Espinal (ClaroDom) on 18/8/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
 
    var bmi: BMI?
    
    
    func getBMIValue() -> String {
        let bmiDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiDecimalPlace
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        

        
        if bmiValue < 18.5 {
            let color = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat more pies", color: color)
        } else if bmiValue < 24.5 {
            let color = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle!", color: color)
            
        } else {
            let color = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: color)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor? {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}

