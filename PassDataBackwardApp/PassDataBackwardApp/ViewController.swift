//
//  ViewController.swift
//  PassDataBackwardApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController, SendDataBackwards {
    
    @IBOutlet weak var myLabel: UILabel!
    var receivedData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Send Data Backwards Conformance
    func sendDataBack(data: String) {
        self.receivedData = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondVC = segue.destination as? SecondViewController
        secondVC?.delegate = self
    }
    
    @IBAction func viewData(_ sender: UIButton) {
        myLabel.text = receivedData
    }
    
    
}

