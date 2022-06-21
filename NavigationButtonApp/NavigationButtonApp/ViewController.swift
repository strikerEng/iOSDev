//
//  ViewController.swift
//  NavigationButtonApp
//
//  Created by Kire  on 6/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }

    @IBAction func buttonTapped(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "Message", message: "Bar button tapped", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

