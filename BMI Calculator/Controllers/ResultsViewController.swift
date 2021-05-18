//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Jedediah Hernandez on 5/17/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    
    

    @IBOutlet weak var resultsLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultsLabel.text = bmiValue
    }
    
    @IBAction func recalcBtnPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
