//
//  ViewController.swift
//  SwipeApp
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

    @IBAction func rightSwipeDetected(_ sender: UISwipeGestureRecognizer) {
        topImageView.center = CGPoint(x: topImageView.center.x + topImageView.frame.width, y: topImageView.center.y)
    }
    
    @IBAction func upSwipeDetected(_ sender: UISwipeGestureRecognizer) {
        topImageView.center = CGPoint(x: topImageView.center.x, y: topImageView.center.y - topImageView.frame.height)
    }
    
    
}

