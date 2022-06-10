//
//  ViewController.swift
//  stepperApp
//
//  Created by Kire  on 6/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var stepperValue: UIStepper!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    /// Display the current value of the stepper in the labelValue
    /// - Parameter sender: The stepper object in the view
    @IBAction func stepperChanged(_ sender: UIStepper) {
        labelValue.text = "\(stepperValue.value)"
    }
    
    /// Change the attributes of the stepper in the view
    /// - Parameter sender: The button in the view
    @IBAction func changeStepper(_ sender: UIButton) {
        stepperValue.minimumValue = -10
        stepperValue.maximumValue = -5
        stepperValue.stepValue = 0.5
        stepperValue.isContinuous = true
        stepperValue.autorepeat = true
        stepperValue.wraps = true
    }
}

