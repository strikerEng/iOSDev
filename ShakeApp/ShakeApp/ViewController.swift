//
//  ViewController.swift
//  ShakeApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        // Alternate the backgound color when a shake gesture is determined
        if motion == .motionShake{
            if myView.backgroundColor == .red{
                myView.backgroundColor = .green
            }
            else{
                myView.backgroundColor = .red
            }
        }
    }


}

