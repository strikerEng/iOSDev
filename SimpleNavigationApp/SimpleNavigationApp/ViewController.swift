//
//  ViewController.swift
//  SimpleNavigationApp
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
    
    // Do something before the segue completes
    // This function needs to be defined in the previous view controller to pass data to the next view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.title = "Second View Controller"
        nextVC.receivedString = "Passed text"
        
    }


}

