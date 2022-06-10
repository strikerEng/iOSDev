//
//  ViewController.swift
//  sliderApp
//
//  Created by Kire  on 6/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelValue: UILabel!
    @IBOutlet weak var sliderValue: UISlider!
    
    @IBAction func changeSlider(_ sender: UIButton) {
        sliderValue.minimumValue = 1
        sliderValue.maximumValue = 25
        
        sliderValue.value = 7
        
        sliderValue.minimumTrackTintColor = .red
        sliderValue.maximumTrackTintColor = .green
        
        sliderValue.thumbTintColor = .black
        
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        labelValue.text = "\(sliderValue.value)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

