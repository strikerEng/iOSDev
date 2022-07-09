//
//  ViewController.swift
//  ReadWriteApp
//
//  Created by Kire  on 7/9/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var createText: UITextView!
    @IBOutlet weak var displayText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createText.text = "Type your text here."
        displayText.text = ""
    }

    @IBAction func writeFile(_ sender: UIButton) {
        // file manager
        let fm = FileManager.default
        
        // location to write files
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        
        let url = urls.last?.appendingPathComponent("file.txt")
        
        // attempt to write to the file
        
        do {
            try createText.text.write(to: url!, atomically: true, encoding: .utf8)
        } catch  {
            print("File writing error")
        }
        
    }
    
    @IBAction func readFile(_ sender: UIButton) {
        let fm = FileManager.default
        
        // location to read files
        let urls = fm.urls(for: .documentDirectory, in: .userDomainMask)
        
        // file to read
        let url = urls.last?.appendingPathComponent("file.txt")
        
        do {
            let fileContent = try String(contentsOf: url!, encoding: .utf8)
            displayText.text = fileContent
        } catch {
            print("File reading error")
        }
    }
}

