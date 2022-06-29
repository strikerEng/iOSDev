//
//  ViewController.swift
//  NotificationCenterApp
//
//  Created by Kire  on 6/28/22.
//

import UIKit


// Names used to identify different notification observers
extension Notification.Name{
    static let firstSegment = Notification.Name("first")
    static let secondSegment = Notification.Name("second")
    static let buttonPressed = Notification.Name("button")
}

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @objc func firstSegmentTapped(notification: Notification){
        myLabel.text = "First segment of segmented control tapped."
    }
    
    @objc func secondSegmentTapped(notification: Notification){
        myLabel.text = "Second segment of segmented control tapped."
    }
    
    @objc func buttonTapped(notification: Notification){
        myLabel.text = "Button tapped."
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(firstSegmentTapped(notification:)), name: .firstSegment, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(secondSegmentTapped(notification:)), name: .secondSegment, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(buttonTapped(notification:)), name: .buttonPressed, object: nil)
    }


}

