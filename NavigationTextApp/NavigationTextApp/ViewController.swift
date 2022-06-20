//
//  ViewController.swift
//  NavigationTextApp
//
//  Created by Kire  on 6/20/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navigationItem.prompt = "Prompt text"
        // This is the title that will be shown by the back button if there is no custom button
        navigationItem.title = "Title text"
        
        navigationController?.navigationBar.tintColor = .red
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        performSegue(withIdentifier: "firstLink", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! SecondViewController
        nextVC.navigationItem.prompt = "New prompt here"
        nextVC.navigationItem.title = "New title here"
        
        // Create a custom button to replace the default back button in the navigation bar
        let customButton = UIBarButtonItem()
        customButton.title = "New back text"
        navigationItem.backBarButtonItem = customButton
    }


}

