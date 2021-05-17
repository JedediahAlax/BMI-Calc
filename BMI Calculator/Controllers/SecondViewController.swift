//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Jedediah Hernandez on 5/16/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

// Second class for second viewController
class SecondViewController: UIViewController {
    
    // value for bmi that will be passed from first viewController
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        
        // Creating a label to show on screen for the bmi value
        let label = UILabel()
        
        // set text property of label to bmiValue
        label.text = bmiValue
        
        // create a frame for the label
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        
        // add the label to the view of the second viewController
        view.addSubview(label)
    }
}
