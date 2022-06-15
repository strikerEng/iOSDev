//
//  ViewController.swift
//  RotateApp
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

    @IBAction func rotationDetected(_ sender: UIRotationGestureRecognizer) {
        topImageView.transform = CGAffineTransform(rotationAngle: sender.rotation)
    }
}

