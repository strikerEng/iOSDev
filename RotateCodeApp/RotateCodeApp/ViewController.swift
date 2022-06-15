//
//  ViewController.swift
//  RotateCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    
    var rotateMe: UIRotationGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled = true
        topImageView.backgroundColor = UIColor.green
        let rotationGesture = UIRotationGestureRecognizer(target: self, action: #selector(rotationDetected))
        topImageView.addGestureRecognizer(rotationGesture)
        rotateMe = rotationGesture
    }

    @objc func rotationDetected(){
        topImageView.transform = CGAffineTransform(rotationAngle: rotateMe!.rotation)
    }

}

