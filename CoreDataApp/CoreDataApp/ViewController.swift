//
//  ViewController.swift
//  CoreDataApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit
import Foundation
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var priceOfProduct: UITextField!
    @IBOutlet weak var productName: UITextField!
    @IBOutlet weak var displayPriceDetails: UILabel!
    
    var dataManager: NSManagedObjectContext!
    var listArray = [NSManagedObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Access the App Delegate
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        dataManager = appDelegate.persistentContainer.viewContext
        
        
        // Make sure the label is empty when the view loads
        displayPriceDetails.text?.removeAll()
        
        fetchData()
    }
    
    func fetchData(){
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NSFetchRequest(entityName: "Item")
        
        do {
            let result = try dataManager.fetch(fetchRequest)
            listArray = result as! [NSManagedObject]
            for item in listArray{
                let product = item.value(forKey: "name") as! String
                let price = item.value(forKey: "price") as! String
                
                displayPriceDetails.text! += "Product Name: \(product) Price: \(price) \n"
            }
            
        } catch {
            print("Can not fetch data from Core Data.")
        }
    }

    @IBAction func addData(_ sender: UIButton) {
        let newEntity = NSEntityDescription.insertNewObject(forEntityName: "Item", into: dataManager)
        
        newEntity.setValue(productName.text!, forKey: "name")
        newEntity.setValue(priceOfProduct.text!, forKey: "price")
        
        // Try to save a new entity to the Item data model
        do {
            try self.dataManager.save()
            listArray.append(newEntity)
        } catch  {
            print("Could not save the new entity.")
        }
        
        // Clear data fields after the entity has been added to the Item data model
        displayPriceDetails.text?.removeAll()
        productName.text?.removeAll()
        priceOfProduct.text?.removeAll()
        
        // Show saved entity details in the text view
        fetchData()
        
    }
    
    // Delete a entity associated with a product name
    @IBAction func deleteData(_ sender: UIButton) {
        let deleteItem = productName.text!
        
        for item in listArray{
            // Found the product to delete
            if item.value(forKey: "name") as! String == deleteItem{
                dataManager.delete(item)
            }
            
            do {
                try self.dataManager.save()
            } catch {
                print("Error deleting the item: \(deleteItem).")
            }
            
            productName.text?.removeAll()
            displayPriceDetails.text?.removeAll()
            fetchData()
        }
    }
    
}

