//
//  ViewController.swift
//  CollectionViewTutorial
//
//  Created by Aman Meena on 23/02/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    // Variables
    var imageArray = [UIImage]()
    
    
    // Constants
    let reuseID = "CollectionViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 0...21 {
            imageArray.append(UIImage(named: "image\(index)")!)
        }
        callDelegates()
    }

    func callDelegates() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }

}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID, for: indexPath) as! CollectionViewCell
        cell.configureCell(label: "Hello India", image: imageArray[indexPath.row])
        return cell
    }
    
    
}
