//
//  TableViewCell.swift
//  shopApp
//
//  Created by Kirill Taraturin on 07.02.2023.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
extension TableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myProducts[collectionView.tag].productImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell

        cell.imageView.image = UIImage(named: myProducts[collectionView.tag].productImage[indexPath.row])
        cell.nameLabel.text = myProducts[collectionView.tag].productName[indexPath.row]

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("You have Clicked on Products \(myProducts[collectionView.tag].productName[indexPath.row])")
    }
}
