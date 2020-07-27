//
//  CalculatorBrain.swift
//  BMI Calc
//
//  Created by Archangel on 08/07/20.
//  Copyright © 2020 Archangel. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let simpleBMI = String(format: "%.1f", bmi?.value ?? 0.0)
        return simpleBMI
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "WTF is this"
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (pow(height, 2))
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Go get some burgers!")
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Damn you health af")
        } else {
            bmi = BMI(value: bmiValue, advice: "I dunno maybe jog a little? or run even")
        }
        
    }
    
    
}
