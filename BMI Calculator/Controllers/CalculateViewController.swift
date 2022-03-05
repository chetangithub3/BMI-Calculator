//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    var bmi: Float = 0.0

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let currentHeight = sender.value
        updateHeightLabel(value: currentHeight)
    }
    @IBAction func WeightSliderChanged(_ sender: UISlider) {
        let currentWeight=sender.value
        updateWeightLabel(currentValue: currentWeight)
    }
    
    func updateHeightLabel(value: Float){
        heightLabel.text = String(format: "%.2f", value) + "m"
    }
    func updateWeightLabel(currentValue: Float){
        
        weightLabel.text = String(format: "%.2f", currentValue) + "Kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        bmi = weightSlider.value/( pow(heightSlider.value, heightSlider.value))
        print(heightSlider.value)
        print(weightSlider.value)
        print(bmi)
        
        self.performSegue(withIdentifier: "toResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"{
           let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmi
            
        }
    }
    
}

