//
//  ViewController.swift
//  LongPressCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled = true
        topImageView.backgroundColor = .green
        
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(longPressDetected))
        topImageView.addGestureRecognizer(longPressGesture)
        
    }

    @objc func longPressDetected(){
        topImageView.backgroundColor = .red
    }

}

