//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by home iMac on 5/25/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {

    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        
        return bmi?.advice ?? "No advice"
        
    }
    
    func getColor() -> UIColor {
        
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
      let bmiValue = weight / (height * height)
      
        
        if bmiValue < 18.5 {
      //      print("underweight")
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
       //     print("normal weight")
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
      //      print("overweight")
            bmi = BMI(value: bmiValue, advice: "Eat less pies", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        }
        
    }
    
}



