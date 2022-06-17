//
//  ViewController.swift
//  AlertControllerTextFieldApp
//
//  Created by Kire  on 6/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelResult: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelResult.numberOfLines = 0
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let alert = UIAlertController(title: "Log In", message: "Enter Password", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Password here"
            textField.isSecureTextEntry = true
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            // Get the text from the text field and case as a UITextField object
            let savedText = alert.textFields![0] as UITextField
            
            
            // Update the label with the alert controller text field text
            self.labelResult.text = savedText.text
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
}

