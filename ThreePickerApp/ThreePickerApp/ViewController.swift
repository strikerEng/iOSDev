//
//  ViewController.swift
//  ThreePickerApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPickerView: UIPickerView!
    var componentOne: [String] = [String]()
    var componentTwo: [String] = [String]()
    var componentThree: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myPickerView.delegate = self
        myPickerView.dataSource = self
        componentOne = ["cat", "dog", "parrot", "lizard", "goldfish", "hamster"]
        
        componentTwo = ["house", "apartment", "condo", "RV"]
        
        componentThree = ["indoor", "outdoor"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component{
        case 0:
            return componentOne.count
        case 1:
            return componentTwo.count
        default:
            return componentThree.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component{
        case 0:
            return componentOne[row]
        case 1:
            return componentTwo[row]
        default:
            return componentThree[row]
        }
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        // Get the selected picker view options from all three data sources
        let petIndex = myPickerView.selectedRow(inComponent: 0)
        let homeIndex = myPickerView.selectedRow(inComponent: 1)
        let placIndex = myPickerView.selectedRow(inComponent: 2)
        
        // Create an alert controller
        let alert = UIAlertController(title: "Your Choice", message: "\(componentOne[petIndex]) \(componentTwo[homeIndex]) \(componentThree[placIndex])", preferredStyle: .alert)
        
        // Create an alert action
        let alertAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
            // dismiss the action sheet
        })
        
        // Add alert action to the alert controller
        alert.addAction(alertAction)
        
        // Present the alert controller
        self.present(alert, animated: true, completion: nil)
    }
}

