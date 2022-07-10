//
//  ViewController.swift
//  3DTouchApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Triggered when a touch is detected
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if touches.first != nil{
            if #available(iOS 9.0, *){
                // traitCollection describes the state of the current environment
                // If the device supports force touch AKA 3D Touch
                if traitCollection.forceTouchCapability == UIForceTouchCapability.available{
                    print("3D Touch Available")
                }else {
                    print("3D Touch Not Available")
                }
            } else{
                print("Need iOS 9.0 or higher to support 3D Touch")
            }
        }
    }


}

