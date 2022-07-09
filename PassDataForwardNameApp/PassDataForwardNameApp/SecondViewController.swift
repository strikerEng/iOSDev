//
//  SecondViewController.swift
//  PassDataForwardNameApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var displayData: UILabel!
    var receivedData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayData.text = receivedData
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: UIButton) {
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
