//
//  ViewController.swift
//  ThreadApp
//
//  Created by Kire  on 6/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var spinnerView: UIActivityIndicatorView!
    @IBOutlet weak var resultsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.spinnerView.hidesWhenStopped = true
    }

    @IBAction func doButton(_ sender: UIButton) {
        let startTime = NSDate()
        self.resultsTextView.text = ""
        self.spinnerView.startAnimating()
        
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
                self.spinnerView.stopAnimating()
            }
            
            let endTime = NSDate()
            
            print("Completed in \(endTime.timeIntervalSince(startTime as Date)) seconds")
        }
    }
    
    @IBAction func doGroupButton(_ sender: UIButton) {
        let startTime = NSDate()
        self.resultsTextView.text = ""
        self.spinnerView.startAnimating()
        
        let queue = DispatchQueue.global(qos: .default)
        queue.async {
            let fetchedData = self.fetchSomethingFromServer()
            let processedData = self.processData(fetchedData)
            var firstResult: String!
            var secondResult: String!
            
            // create a dispatch group
            let group = DispatchGroup()
            
            // Independent async function call in the dispatch group
            queue.async(group: group, execute: {
                firstResult = self.calculateFirstResult(processedData)
            })
            
            // Independent async function call in the dispatch group
            queue.async(group: group, execute: {
                secondResult = self.calculateSecondResult(processedData)
            })
            
            // After both
            group.notify(queue: queue, execute: {
                let resultSummary = "First: [\(firstResult)]\n [\(secondResult)]"
                // To make sure we modify the user interface in a thread-safe manner we specify this code to ro=un on the main thread
                DispatchQueue.main.async {
                    self.resultsTextView.text = resultSummary
                    self.spinnerView.stopAnimating()
                }
                let endTime = NSDate()
                print("Completed in \(endTime.timeIntervalSince(startTime as Date)) seconds")
            })
            
            
            
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

