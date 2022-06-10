//
//  ViewController.swift
//  labelApp
//
//  Created by Kire  on 6/9/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeLabel(_ sender: Any) {
        myLabel.text = "Text created by Swift \ncode using Xcode"
        myLabel.numberOfLines = 2
        
        myLabel.font = UIFont(name: "Courier", size: 14)
        
        myLabel.backgroundColor = .yellow
        myLabel.isEnabled = false
    }
    
}

