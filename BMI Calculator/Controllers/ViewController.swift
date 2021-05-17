//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        // Create object for second viewController
        let secondVC = SecondViewController()
        
        // assign the bmi to the second viewControllers bmiValue property, format to string because bmiValue is a string data type
        secondVC.bmiValue = String(format: "%.1f", bmi)
        
        // present the second viewController
        self.present(secondVC, animated: true, completion: nil)
    }
}


