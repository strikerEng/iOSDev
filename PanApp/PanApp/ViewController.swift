//
//  ViewController.swift
//  PanApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {
 
    @IBOutlet weak var topImageView: UIImageView!
    var xOrigin:CGFloat = 0
    var yOrigin: CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        xOrigin = topImageView.center.x
        yOrigin = topImageView.center.y
    }

    @IBAction func handlePan(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        topImageView.center = CGPoint(x: xOrigin + translation.x, y: yOrigin + translation.y)
    }
    
}

