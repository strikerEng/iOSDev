//
//  ViewController.swift
//  GroupTableViewApp
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
    
    // Reusable cell identifier
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        petTable.delegate = self
        petTable.dataSource = self
    }
    
    /// Determines how many sections the table view will display
    /// - Parameter tableView: reference to a table view
    /// - Returns: An Int to represent the number os
    func numberOfSections(in tableView: UITableView) -> Int {
        return petArray.count
    }
    
    /// Specify how many rows will be shown in a section within a table view
    /// - Parameters:
    ///   - tableView: reference to a table view
    ///   - section: the number of sections to be presented in the table view
    /// - Returns: An Int to represent the number of rows in a given section within a table view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // The first entry of each section is the header titile
        return petArray[section].count - 1
    }
    
    /// When the table vie is being displayed or updated this function is used to determing the text of that cell
    /// - Parameters:
    ///   - tableView: reference to a table view
    ///   - indexPath: index path reference that can be used to determine the section and row of the table view cell the user has selected
    /// - Returns: A table view cell that will be displayed on the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = petTable.dequeueReusableCell(withIdentifier: cellID)
        
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = petArray[indexPath.section][indexPath.row + 1]
        return cell!
    }
    
    /// Presents an alert showing the user header and cell they selected
    /// - Parameters:
    ///   - tableView: reference to a table view
    ///   - indexPath: index path reference that can be used to determine the section and row of the table view cell the user has selected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedHeader = petArray[indexPath.section][0]
        let selectedItem = petArray[indexPath.section][indexPath.row + 1]
        
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedHeader + ": " + selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
    
    /// From a data source specify the title of the header in a section
    /// - Parameters:
    ///   - tableView: reference to a table view
    ///   - section: Index of the section in the table view
    /// - Returns: A optional string that will be used as the title for the header in a table view section
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return petArray[section][0]
    }
    
    


}

