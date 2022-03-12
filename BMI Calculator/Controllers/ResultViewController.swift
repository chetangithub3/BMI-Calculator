//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Chetan Dhowlaghar on 3/4/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        bmiValueLabel.text = bmiValue
        resultBackgroundImage.backgroundColor = bmiColor
        resultLabel.text = bmiAdvice
        // Do any additional setup after loading the view.
    }
    
    var bmiValue: String = "0.0"
    var bmiAdvice: String = "default"
    var bmiColor: UIColor = UIColor.gray
    
    @IBOutlet weak var bmiValueLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultBackgroundImage: UIImageView!
    
    @IBOutlet weak var adviceLabel: UILabel!
    @IBAction func recalculateButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "toHome", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toHome"{
            _ = segue.destination as! CalculateViewController
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
