//
//  ViewController.swift
//  NotificationPassApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    static let notificationName = Notification.Name("myNotification")
    
    @objc func onNotification(notification: Notification){
        // Store the notification object
        let data = notification.object
        
        // Convert the notification object to a String
        let temp = String(describing: data!)
        
        
        // Store the text in myLabel
        myLabel.text = temp
    }
    var receivedText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Add a notification observer for Notifications with the notificationName name
        // Call the onNotification function when a Notification is posted
        NotificationCenter.default.addObserver(self, selector: #selector(onNotification(notification:)), name: ViewController.notificationName, object: nil)
    }


}

