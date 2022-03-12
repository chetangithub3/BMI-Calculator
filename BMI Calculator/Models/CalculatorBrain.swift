//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chetan Dhowlaghar on 3/5/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    mutating func calculateBMIValue(height: Float, weight: Float){
       let bmiValue = weight/(height*height)
        print(bmiValue)
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more desserts!", color: UIColor.cyan)
            return
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Keep it up!", color: UIColor.green)
            return
        } else{
            bmi = BMI(value: bmiValue, advice: "Hold your Nutella!", color: UIColor.orange)
            return
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    func getAdvice() -> String{
        return bmi?.advice ?? "error"
    }
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.gray
    }
    
}
