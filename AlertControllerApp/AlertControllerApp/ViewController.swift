//
//  ViewController.swift
//  AlertControllerApp
//
//  Created by Kire  on 6/16/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // show alert that appears on the middle of the screen
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            // dismiss the alert
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionSheetButtonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Warning", message: "Zombies are loose!", preferredStyle: .actionSheet)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
            // dismiss the action sheet
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
}

