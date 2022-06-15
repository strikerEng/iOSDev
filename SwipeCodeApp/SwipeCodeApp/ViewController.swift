//
//  ViewController.swift
//  SwipeCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topImageView: UIImageView!
    
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge{
        return UIRectEdge.bottom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled = true
        topImageView.backgroundColor = .green
        
        let downSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(downSwipeDetected))
        downSwipeGesture.direction = .down
        topImageView.addGestureRecognizer(downSwipeGesture)
        
        let leftSwipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(leftSwipeDetected))
        leftSwipeGesture.direction = .left
        topImageView.addGestureRecognizer(leftSwipeGesture)
    }

    @objc func downSwipeDetected(){
        topImageView.center = CGPoint(x: topImageView.center.x, y: topImageView.center.y + topImageView.frame.height)
    }
    
    @objc func leftSwipeDetected(){
        topImageView.center = CGPoint(x: topImageView.center.x - topImageView.frame.width, y: topImageView.center.y)
    }
}

