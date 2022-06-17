//
//  ViewController.swift
//  TableViewIndexApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var petTable: UITableView!
    
    let petArray: [[String]] = [
        ["Mammal", "cat", "dog", "hamster", "gerbil", "rabbit"],
        ["Bird", "parakeet", "canary", "finch"],
        ["Fish", "tropical fish", "goldfishes", "sea hourses"],
        ["Reptiles", "turtle", "snake", "lizards"]
    ]
    
    let indexArray = ["M🐈", "B🦅", "F🐟", "R🐢"]
    let cellID = "cellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        petTable.delegate = self
        petTable.dataSource = self
        petTable.sectionIndexColor = .white
        petTable.sectionIndexBackgroundColor = .black
        petTable.sectionIndexTrackingBackgroundColor = .darkGray
    }
    
    /// Specify the number of sections the table view will display
    /// - Parameters:
    ///   - tableView: table view reference
    ///   - section: The number of sections the table view will display
    /// - Returns: An Int to represent the number of sections the table view will show
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray[section].count - 1
    }
    
    /// Specify the content the table view cell with show
    /// - Parameters:
    ///   - tableView: table view reference
    ///   - indexPath: The index path of the cell
    /// - Returns: A table view cell that will be shown on the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = petTable.dequeueReusableCell(withIdentifier: cellID)
        
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    /// Present an alert controller when the user selects a table view cell
    /// - Parameters:
    ///   - tableView: blank
    ///   - indexPath: blank
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedHeader = petArray[indexPath.section][0]
        let selectedIndex = indexArray[indexPath.section]
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        
        
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedIndex + ": " + selectedHeader + ": " + selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func numberOfSections(in tableView: UITableView) ->  Int{
        return petArray.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
    }

}

