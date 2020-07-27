//
//  SecondViewController.swift
//  BMI Calc
//
//  Created by Archangel on 05/07/20.
//  Copyright © 2020 Archangel. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        
    }
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
