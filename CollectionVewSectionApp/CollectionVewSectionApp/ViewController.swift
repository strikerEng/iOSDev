//
//  ViewController.swift
//  CollectionVewSectionApp
//
//  Created by Kire  on 6/20/22.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{

    @IBOutlet weak var collectionCell: UICollectionView!
    
    let petArray: [[String]] = [
        ["Mammal", "cat", "dog", "hamster", "gerbil", "rabbit"],
        ["Bird", "parakeet", "canary", "finch"],
        ["Fish", "tropical fish", "goldfishes", "sea hourses"],
        ["Reptiles", "turtle", "snake", "lizards"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        collectionCell.delegate = self
        collectionCell.dataSource = self
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return self.petArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.petArray[section].count - 1
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "headerView", for: indexPath) as! itemCell
        
        // update cell label text for header
        headerView.headerLabel.text = self.petArray[indexPath.section][0]
        
        return headerView
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // create cell with deque
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "customCell", for: indexPath) as! itemCell
        
        // update cell label text for current cell
        cell.itemLabel.text = self.petArray[indexPath.section][indexPath.row + 1]
        
        // return cell
        return cell
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedItem = self.petArray[indexPath.section][indexPath.row + 1]
        let alert = UIAlertController(title: "Your Choice", message: "\(selectedItem)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: {
            action -> Void in
        })
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }


}

