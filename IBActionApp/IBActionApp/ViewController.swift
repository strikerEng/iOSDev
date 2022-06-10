//
//  ViewController.swift
//  IBActionApp
//
//  Created by Kire  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelResult.frame.size.width = 120 
    }

    @IBAction func buttonTapped(_ sender: Any) {
        switch (sender as AnyObject).tag {
        case 1:
            labelResult.text = "Button 1"
        case 2:
            labelResult.text = "Button 2"
        default:
            labelResult.text = "Default"
        }
    }
    
}

