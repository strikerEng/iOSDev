//
//  ViewController.swift
//  LocalApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Displaying data in different format
        let dateFormattter = DateFormatter()
        dateFormattter.dateStyle = .full
        let myDate = dateFormattter.string(from: Date())
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .currency
        let myMoney = numberFormatter.string(from: 123456)
        
        // Create localization strings for every label
        greetingLabel.text = NSLocalizedString("[GREETING]", comment: "Formal greeting")
        dateLabel.text = NSLocalizedString("\(myDate)", comment: "Date format")
        numberLabel.text = NSLocalizedString("\(myMoney!)", comment: "Number format")
        let imageFile = NSLocalizedString("[FLAG]", comment: "National flag")
        imageView.image = UIImage(named: imageFile)
    }


}

