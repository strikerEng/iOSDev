//
//  SecondViewController.swift
//  NotificationPassApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: UIButton) {
        let dataSent = textField.text
        
        // Post Notification
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "myNotification"), object: dataSent)
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
