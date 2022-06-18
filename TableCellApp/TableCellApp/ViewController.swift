//
//  ViewController.swift
//  TableCellApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableData: UITableView!
    
    let mainArray = ["Shuttle Bus", "Hockey", "Meeting", "Shopping"]
    let detailArray = ["This works sometimes", "I never knew that", "Okay, its fine.", "This last one was missing haha"]
    let imageArray = ["photobooth", "photobooth", "photobooth", "photobooth"]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableData.delegate = self
        tableData.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = mainArray[indexPath.row]
        let selectedDetailItem = detailArray[indexPath.row]
        
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem + ": " + selectedDetailItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableData.dequeueReusableCell(withIdentifier: cellID)
        
        if (cell == nil){
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellID)
        }
        cell?.textLabel?.text = mainArray[indexPath.row]
        cell?.detailTextLabel?.text = detailArray[indexPath.row]
        cell?.imageView?.image = UIImage(named: imageArray[indexPath.row])
        return cell!
    }
    
}

