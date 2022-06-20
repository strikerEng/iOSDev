//
//  ViewController.swift
//  SimpleCollectionViewApp
//
//  Created by Kire  on 6/20/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    var cellColor: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    // Specify the number of collection view cells to show
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }
    
    // Create collection view cells within a collection view
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath)
        
        if cellColor{
            cell.backgroundColor = .green
        } else{
            cell.backgroundColor = .red
        }
        
        // For each cell color alternate between true and false
        cellColor = !cellColor
        
        return cell
    }


}

