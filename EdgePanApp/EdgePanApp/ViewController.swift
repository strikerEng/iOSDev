//
//  ViewController.swift
//  EdgePanApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Overrides behavior of iOS to display the control center when the user pans up from the bottom edge of the screen. Not necessary if only detectin the left and right edge
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge{
        return UIRectEdge.bottom
        // override notification center display
        //return UIRectEdge.top
    }
    
    @IBAction func bottomEdgeDetected(_ sender: UIScreenEdgePanGestureRecognizer) {
        print("Bottom edge pan gesture.")
    }
    
    @IBAction func leftEdgeDetected(_ sender: UIScreenEdgePanGestureRecognizer) {
        print("Left edge pan gesture.")
    }
    
    
    

}

