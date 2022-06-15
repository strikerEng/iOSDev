//
//  ViewController.swift
//  PanCodeApp
//
//  Created by Kire  on 6/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var topImageView: UIImageView!
    var xOrigin: CGFloat = 0
    var yOrigin: CGFloat = 0
    
    var panMe: UIPanGestureRecognizer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topImageView.isUserInteractionEnabled = true
        topImageView.backgroundColor = .green
        xOrigin = topImageView.center.x
        yOrigin = topImageView.center.y

        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panHandler))
        topImageView.addGestureRecognizer(panGesture)
        panMe = panGesture
    }
    
    @objc func panHandler(){
        let translation = panMe!.translation(in: view)
        topImageView.center = CGPoint(x: xOrigin + translation.x, y: yOrigin + translation.y)
        
        
    }


}

