//
//  ViewController.swift
//  EdgePanCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    
    // Override app expose bottom edge gesture
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge{
        return UIRectEdge.bottom
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Bottom edge gesture
        let bottomEdgeGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleBottomEdge))
        myView.addGestureRecognizer(bottomEdgeGesture)
        bottomEdgeGesture.edges = .bottom
        
        // Left edge gesture
        let leftEdgeGesture = UIScreenEdgePanGestureRecognizer(target: self, action: #selector(handleTopEdge))
        myView.addGestureRecognizer(leftEdgeGesture)
        leftEdgeGesture.edges = .left
    }
    
    @objc func handleBottomEdge(){
        print("Bottom edge gesture recognizer")
    }

    @objc func handleTopEdge(){
        print("Left edge gesture recognizer")
    }

}

