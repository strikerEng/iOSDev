//
//  ViewController.swift
//  AppDelegateApp
//
//  Created by Kire  on 6/29/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mySlider.value = AppDelegate.shared().sliderData
        mySwitch.isOn = AppDelegate.shared().switchData
        myTextField.text = AppDelegate.shared().textFieldData
    }
    
    @IBAction func clearData(_ sender: UIButton) {
        mySlider.value = 0
        myTextField.text = ""
        mySwitch.isOn = false
    }
    
    // MARK: Store Values in the App Delegate
    @IBAction func changeSwitch(_ sender: UISwitch) {
        AppDelegate.shared().switchData = sender.isOn
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        AppDelegate.shared().sliderData = sender.value
    }
    
    @IBAction func changeTextField(_ sender: UITextField) {
        AppDelegate.shared().textFieldData = sender.text ?? ""
    }
    
}

