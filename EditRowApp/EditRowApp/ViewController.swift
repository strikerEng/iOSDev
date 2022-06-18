//
//  ViewController.swift
//  EditRowApp
//
//  Created by Kire  on 6/18/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableView: UITableView!
    
    var petArray: [String] = ["cat", "dog", "parakeet", "parrot", "canary", "finch", "tropical fish", "goldfish", "sea horses", "hamster", "gerbil", "rabbit", "turtle", "snake", "lizard", "hermit crab"]
    
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCell(withIdentifier: cellID)
        
        if (cell == nil){
            cell = UITableViewCell(style: .default, reuseIdentifier: cellID)
        }
        
        cell?.textLabel?.text = self.petArray[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.petArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = self.petArray[indexPath.row]
        
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
    
    func displayAlert(location: Int){
        
        let alert = UIAlertController(title: "Add a new pet to the list", message: "Pet Name: ", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { (texField) in
            texField.placeholder = "Enter a pet name here…"
        })
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { action -> Void in
            let savedText = alert.textFields![0] as UITextField
            self.petArray.insert(savedText.text ?? "default", at: location)
            self.tableView.reloadData()
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
        
    }
   
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let addAction = UIContextualAction(style: .normal, title: "Add a new pet", handler: {
            (action, view, isComplete) in
            self.displayAlert(location: indexPath.row)
        })
        
        let leadingSwipeAddAction = UISwipeActionsConfiguration(actions: [addAction])
        return leadingSwipeAddAction
        
    }
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete \(self.petArray[indexPath.row])", handler: {
            (action, view, isComplete) in
            self.petArray.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
        })
        
        let trailingSwipeDeleteAction = UISwipeActionsConfiguration(actions: [deleteAction])
        return trailingSwipeDeleteAction
    }
}

