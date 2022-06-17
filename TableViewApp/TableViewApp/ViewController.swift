//
//  ViewController.swift
//  TableViewApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    @IBOutlet weak var petTable: UITableView!
    
    let petArray: [String] = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    
    // arbitrary constant name for a cell
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        petTable.delegate = self
        petTable.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petArray.count
    }
    
    // Called when the table view needs to put data in its rows
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Create a reusable table view cell selected by its identifier
        var cell = tableView.dequeueReusableCell(withIdentifier: cellID)
        
        // If the cell was not found with the about identifier, create a new table view cell
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        // Set the text of the cell to the pet name at the current row index
        cell?.textLabel?.text = petArray[indexPath.row]
        
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = petArray[indexPath.row]
        
        let alert = UIAlertController(title: "Your choice", message: "\(selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }


}

