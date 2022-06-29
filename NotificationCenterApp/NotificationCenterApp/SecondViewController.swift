//
//  SecondViewController.swift
//  NotificationCenterApp
//
//  Created by Kire  on 6/28/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Send a notification that the user tapped the button on the second view controller
    @IBAction func tapButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .buttonPressed, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    // Send a notification that the user tapped the segmented control on the second view controller and the segment that was clicked
    @IBAction func tapSegmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            NotificationCenter.default.post(name: .firstSegment, object: nil)
        case 1:
            NotificationCenter.default.post(name: .secondSegment, object: nil)
        default:
            print("Default")
        }
        
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
