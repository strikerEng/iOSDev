//
//  ViewController.swift
//  TapApp
//
//  Created by Kire  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labelCode: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Empower the label to accept user interaction
        labelCode.isUserInteractionEnabled = true
        
        // Define a tap getsure
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        
        // Add gesture recognizer to the label
        labelCode.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(){
        print("Tap on second label detected.")
    }

    @IBAction func tapDetected(_ sender: UITapGestureRecognizer) {
        print("Tap Detected.")
    }
    
    
    
}

