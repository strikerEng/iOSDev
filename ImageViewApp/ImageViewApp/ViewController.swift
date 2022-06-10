//
//  ViewController.swift
//  ImageViewApp
//
//  Created by Kire  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        
        if touch?.view == imageView{
            print("View touched")
        }
        else{
            print("Did not touch view")
        }
    }


}

