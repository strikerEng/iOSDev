//
//  ViewController.swift
//  PlayInternetVideoApp
//
//  Created by Kire  on 7/10/22.
//

import UIKit
import AVKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var myView = WKWebView()
    
    var player = AVPlayer()
    
    let scottyKilmerVideoURL = "https://youtu.be/JvUOGr_kEhY"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
         
        // Cast YouTube video link to a URL
        if let url = URL(string: scottyKilmerVideoURL){
            let request = URLRequest(url: url)
            webView.load(request)
            
        }else{
            print("Could not create a URL object from the link \(scottyKilmerVideoURL)")
        }
    }
    
    


}

