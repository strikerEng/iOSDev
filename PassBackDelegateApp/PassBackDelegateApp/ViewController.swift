//
//  ViewController.swift
//  PassBackDelegateApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var receivedText: String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("View will appear.")
        label.text = receivedText
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondViewController
        // Pass the received text to the sentText variable in the SecondViewController
        vc.sentText = self.receivedText
        
        // Set the delegate to self, ViewController
        vc.delegate = self
        
    }


}

