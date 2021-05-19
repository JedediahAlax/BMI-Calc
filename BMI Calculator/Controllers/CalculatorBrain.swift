//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Jedediah Hernandez on 5/18/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiRounded = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiRounded
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice, BMI was nil"
        
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    
    
   mutating func calcBMI(height: Float, weight: Float) {
         let bmiVal = weight / (height * height)
    
    if bmiVal < 18.5 {
        bmi = BMI(value: bmiVal, advice: "You skinny as a twig!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
    } else if bmiVal < 24.9 {
        bmi = BMI(value: bmiVal, advice: "You fit af!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
    } else {
        bmi = BMI(value: bmiVal, advice: "You are obese.", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
    }
    }
}
