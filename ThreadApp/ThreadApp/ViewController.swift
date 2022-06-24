//
//  ViewController.swift
//  ThreadApp
//
//  Created by Kire  on 6/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func doButton(_ sender: UIButton) {
        let startTime = NSDate()
        
        let queue = DispatchQueue.global(qos: .default)
        queue.async {
            self.resultsTextView.text = ""
            let fetchedData = self.fetchSomethingFromServer()
            let processedData = self.processData(fetchedData)
            let firstResult = self.calculateFirstResult(processedData)
            let secondResult = self.calculateSecondResult(processedData)
            let resultSummary = "First: [\(firstResult)]\n [\(secondResult)]"
            
            // This code causes an error because we're making changes to the user interface outside of the main thread
            self.resultsTextView.text = resultSummary
            let endTime = NSDate()
            
            print("Completed in \(endTime.timeIntervalSince(startTime as Date)) seconds")
        }
    }
    
    func fetchSomethingFromServer() -> String{
        Thread.sleep(forTimeInterval: 1)
        return "Hi, there"
    }
    
    func processData(_ data: String) -> String{
        Thread.sleep(forTimeInterval: 2)
        return data.uppercased()
    }

    func calculateFirstResult(_ data: String) -> String{
        Thread.sleep(forTimeInterval: 3)
        let message = "Number of chars: \(String(data).count)"
        return message
    }
    
    func calculateSecondResult(_ data: String) -> String{
        Thread.sleep(forTimeInterval: 4)
        return data.replacingOccurrences(of: "E", with: "e")
    }
    
}

