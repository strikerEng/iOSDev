//
//  SecondaryViewController.swift
//  SplitViewCustomApp
//
//  Created by Kire  on 6/21/22.
//

import UIKit

class SecondaryViewController: UIViewController {
    
    @IBOutlet weak var petLabel: UILabel!
    
    var detailItem: String? {
        didSet{
            configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
        // Do any additional setup after loading the view.
    }
    
    // set the text of the label object in the view
    func configureView(){
        if let label = petLabel {
            label.text = detailItem
        }
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
