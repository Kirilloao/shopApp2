//
//  CollectionViewCell.swift
//  shopApp
//
//  Created by Kirill Taraturin on 06.02.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var newPriceLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var buyButton: UIButton!
    
    
    
    @IBAction func buyButtonDidTapped(_ sender: Any) {
    }
}
