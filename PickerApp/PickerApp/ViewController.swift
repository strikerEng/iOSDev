//
//  ViewController.swift
//  PickerApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

// View controller is now the delegate and data source
class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var myPicker: UIPickerView!
    var pickerData: [String] = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPicker.dataSource = self
        myPicker.delegate = self
        pickerData = ["cat", "dog", "hamster", "lizard", "parrot", "goldfish"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        // only displaying one wheel of options
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // Option selected from picker view
        // Index of the currently selected option from the picker view
        let pickerIndex = myPicker.selectedRow(inComponent: 0)
        
        // Create alert
        let alert = UIAlertController(title: "Your Choice", message: "\(pickerData[pickerIndex])", preferredStyle: .alert)
        
        // Create alert action
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: {
            // dismissing the action sheet
            action -> Void in
        })
        
        // Add alert action
        alert.addAction(alertAction)
        
        // Present alert
        self.present(alert, animated: true, completion: nil)
    }
}

