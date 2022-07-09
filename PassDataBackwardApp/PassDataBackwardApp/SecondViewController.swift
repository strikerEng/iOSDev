//
//  SecondViewController.swift
//  PassDataBackwardApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

protocol SendDataBackwards{
    func sendDataBack(data: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    var delegate: SendDataBackwards?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func close(_ sender: UIButton) {
        // Send data back before dismissing the view
        delegate?.sendDataBack(data: textField.text ?? "default data")
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
