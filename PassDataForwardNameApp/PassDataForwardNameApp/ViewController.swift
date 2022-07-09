//
//  ViewController.swift
//  PassDataForwardNameApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldData: UITextField!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        if segue.identifier == "textSegue"{
            print("Passing text data")
            secondVC?.receivedData = textFieldData.text ?? "default value"
        }
        
        if segue.identifier == "sliderSegue"{
            print("Passing slider data")
            secondVC?.receivedData = "Slider value = \(slider.value)"
        }
        
    }


}

