//
//  ViewController.swift
//  UserDefaults
//
//  Created by Kire  on 6/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func saveData(_ sender: UIButton) {
        UserDefaults.standard.set(myTextField.text, forKey: "Text")
        UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func clearData(_ sender: UIButton) {
        myTextField.text = ""
        mySwitch.isOn = true
        mySlider.value = 0.5
    }
    
    @IBAction func loadData(_ sender: UIButton) {
        myTextField.text = UserDefaults.standard.string(forKey: "Text")
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
    }
}

