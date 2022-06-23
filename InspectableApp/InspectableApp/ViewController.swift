//
//  ViewController.swift
//  InspectableApp
//
//  Created by Kire  on 6/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oldButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        oldButton.layer.cornerRadius = 20
        oldButton.layer.borderWidth = 3
        oldButton.layer.borderColor = UIColor.red.cgColor
    }


}

