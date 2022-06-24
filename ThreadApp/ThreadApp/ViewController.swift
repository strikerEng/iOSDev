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
        self.resultsTextView.text = ""
        
        let queue = DispatchQueue.global(qos: .default)
        queue.async {
            let fetchedData = self.fetchSomethingFromServer()
            let processedData = self.processData(fetchedData)
            let firstResult = self.calculateFirstResult(processedData)
            let secondResult = self.calculateSecondResult(processedData)
            let resultSummary = "First: [\(firstResult)]\n [\(secondResult)]"
            
            // To make sure we modify the user interface in a thread-safe manner we specify this code to ro=un on the main thread
            DispatchQueue.main.async {
                self.resultsTextView.text = resultSummary
            }
            
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

