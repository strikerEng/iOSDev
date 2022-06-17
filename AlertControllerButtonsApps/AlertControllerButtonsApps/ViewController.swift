//
//  ViewController.swift
//  AlertControllerButtonsApps
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
        // Create alert controller
        let alert = UIAlertController(title: "Warning", message: "Zombies on the loose!", preferredStyle: .alert)
        
        // Create Alert Controller actions
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            self.labelResult.text = "OK"
            // Functions calls could be called here
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: { action -> Void in
            self.labelResult.text = "Cancel"
            // Functions calls could be called here
        })
        
        let destroyAction = UIAlertAction(title: "Destroy", style: .destructive, handler: { action -> Void in
            self.labelResult.text = "Destroy"
            // Functions calls could be called here
        })
        
        // Add alert actions to the alert controller
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        alert.addAction(destroyAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
}

