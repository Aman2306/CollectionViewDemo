//
//  CollectionViewCell.swift
//  CollectionViewTutorial
//
//  Created by Aman Meena on 23/02/19.
//  Copyright © 2019 Aman Meena. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewOutlet: UIImageView!
    @IBOutlet weak var imageCaptionOutlet: UILabel!
    
    
    func configureCell(label: String, image: UIImage) {
        imageViewOutlet.image = image
        imageCaptionOutlet.text = label
    }
}
