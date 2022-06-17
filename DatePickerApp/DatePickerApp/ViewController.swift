//
//  ViewController.swift
//  DatePickerApp
//
//  Created by Kire  on 6/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    // Date Formatter
    let dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
    }

    func showAlert(dateTime: String){
        let alert = UIAlertController(title: "Selected Date and Time", message: "\(dateTime)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func getCurrentDateAndTime(_ sender: UIButton) {
        let selectedDate: String = dateFormatter.string(from: myDatePicker.date)
        showAlert(dateTime: selectedDate)
    }
    
    // The alert does not appear when the date changes for some reason. I think this is because the date and time picker are technically alerts and blocked it for some reason
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        print("Date Changed.")
        let selectedDate: String = dateFormatter.string(from: sender.date)
        showAlert(dateTime: selectedDate)
    }
}

