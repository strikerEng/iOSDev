//
//  ViewController.swift
//  PassForwardApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Create a Second view controller to handle passing data forward
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.receivedData  = textField.text ?? "default text"
        }
    }

}

