//
//  SecondViewController.swift
//  PassBackDelegateApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var textField: UITextField!
    var sentText: String = ""
    var delegate: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: UIButton) {
        sentText = textField.text != "" ? textField.text! : "default value"
        print("sent text \(sentText)")
        // Pass data back with a delegate which is the ViewController
        delegate.receivedText = sentText
        
        // View will appear is not automatically called here when this View Controller is dismissed so I am using the completion handler to call it manually. This allegedely can be fixed if the second view controller is presented in a full screen format
        dismiss(animated: true, completion: {
            self.delegate.viewWillAppear(true)
        })
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
