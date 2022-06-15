//
//  ViewController.swift
//  PinchApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pinchDetected(_ sender: UIPinchGestureRecognizer) {
        topImageView.transform = CGAffineTransform(scaleX: sender.scale, y: sender.scale)
    }
    
}

