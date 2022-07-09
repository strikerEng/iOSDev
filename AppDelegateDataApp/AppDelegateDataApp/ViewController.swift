//
//  ViewController.swift
//  AppDelegateDataApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendData(_ sender: UIButton) {
        // Store the data in the text field to the received data in the Scene Delegate
        AppDelegate.shared().receivedData = myTextField.text ?? "default value"
        
        // Display the data sent to the Scene Delegate
        myLabel.text = AppDelegate.shared().sentData
    }
    
}

