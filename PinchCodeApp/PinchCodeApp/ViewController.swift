//
//  ViewController.swift
//  PinchCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    
    //Pinch gesture recognizer
    var pinchMe: UIPinchGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled = true
        topImageView.backgroundColor = .green
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(handlePinch))
        topImageView.addGestureRecognizer(pinchGesture)
        pinchMe = pinchGesture
    }
    
    @objc func handlePinch(){
        topImageView.transform = CGAffineTransform(scaleX: pinchMe!.scale, y: pinchMe!.scale)
    }


}

