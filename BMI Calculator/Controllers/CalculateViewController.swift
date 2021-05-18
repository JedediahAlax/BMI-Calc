//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSliderLabel: UISlider!
    
    @IBOutlet weak var weightSliderLabel: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

  
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        // use string format to format the value of the slider to two decimal places
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
    }
    
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)Kg"
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        let height = heightSliderLabel.value
        let weight = weightSliderLabel.value
        
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let desintationVC = segue.destination as! ResultsViewController
            desintationVC.bmiValue = bmiValue
        }
    }
}


