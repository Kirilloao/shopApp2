//
//  ProductCollectionViewCell.swift
//  shopApp
//
//  Created by Kirill Taraturin on 04.02.2023.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var newPriceLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var nameProductLabel: UILabel!
    @IBOutlet weak var buyButtonLabel: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

    @IBAction func buyButtonDidPressed() {
       
    }
    
    func setupCell(product: Product) {
        self.productImageView.image = UIImage(named: product.image)
        self.nameProductLabel.text = product.model
        self.newPriceLabel.text = String(product.priceDiscount)
        self.oldPriceLabel.attributedText = strikeText(strike: String(product.price))
        
        self.oldPriceLabel.backgroundColor = .red
        self.newPriceLabel.backgroundColor = .yellow
        
       
    }
    
    private func strikeText(strike : String) -> NSMutableAttributedString {
        
        let attributeString = NSMutableAttributedString(string: strike)
        attributeString.addAttribute(NSAttributedString.Key.strikethroughStyle,
        value: NSUnderlineStyle.single.rawValue,
        range: NSMakeRange(0, attributeString.length))

        return attributeString
        }
}
