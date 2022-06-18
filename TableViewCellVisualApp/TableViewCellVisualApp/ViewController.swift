//
//  ViewController.swift
//  TableViewCellVisualApp
//
//  Created by Kire  on 6/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    // It seems as though the table view must be connected to this view controller even though it was left out of the instructions. As well as marking self -- this view controller -- as the delegate and data source for the table view. 
    @IBOutlet weak var tableView: UITableView!
    
    let mainArray = ["Shuttle Bus", "Hockey", "Meeting", "Shopping"]
    let detailArray = ["Smoo", "Kire", "iOS", "Bedstuy"]
    let imageArray = ["photobooth", "photobooth", "photobooth", "photobooth"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: TableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        
        cell.mainText?.text = self.mainArray[indexPath.row]
        cell.detailedText?.text = self.detailArray[indexPath.row]
        cell.imageView?.image = UIImage(named: self.imageArray[indexPath.row])
        print("Generating cells.")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedMainText = self.mainArray[indexPath.row]
        let selectedDetailText = self.detailArray[indexPath.row]
        
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedMainText + ": " + selectedDetailText)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
        
    }

}

