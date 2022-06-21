//
//  ViewController.swift
//  TabBarMethodsApp
//
//  Created by Kire  on 6/21/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Add", message: "Add button tapped", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}

