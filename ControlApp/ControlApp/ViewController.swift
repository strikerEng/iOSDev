//
//  ViewController.swift
//  ControlApp
//
//  Created by Kire  on 6/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonObject: UIButton!
    @IBOutlet weak var switchObject: UISwitch!
    @IBOutlet weak var labelSwitch: UILabel!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        segmentedControl.insertSegment(withTitle: "Three", at: 2, animated: true)
        segmentedControl.setWidth(50, forSegmentAt: 0)
        segmentedControl.setWidth(50, forSegmentAt: 1)
        segmentedControl.setWidth(50, forSegmentAt: 2)
    }
    
    @IBAction func touchInside(_ sender: UIButton) {
        buttonObject.setTitle("New", for: .normal)
        switchObject.onTintColor = .red
        // This never sets the off tint color
        switchObject.tintColor = .yellow
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if switchObject.isOn{
            labelSwitch.text = "On"
        }else{
            labelSwitch.text = "Off"
        }
    }
    
    @IBAction func segmentControlTapped(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelSwitch.text = "One"
        case 1:
            labelSwitch.text = "Two"
        default:
            labelSwitch.text = "Three"
        }
    }
}

