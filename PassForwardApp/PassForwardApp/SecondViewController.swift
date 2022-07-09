//
//  SecondViewController.swift
//  PassForwardApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var receivedData: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.text = receivedData

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: UIButton) {
        // Dismiss the second view controller
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
