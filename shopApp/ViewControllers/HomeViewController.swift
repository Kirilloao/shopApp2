//
//  HomeViewController.swift
//  shopApp
//
//  Created by Kirill Taraturin on 05.02.2023.
//

import UIKit

let myProducts = [
    myData(sectionType: "Распродажа", productImage: ["AirPods (2nd generation)", "iPhone 12 Green", "iPhone 14 Blue", "iPhone SE Midnight", "iPad Pro Space Gray"], productName: ["AirPods (2nd generation)", "iPhone 12 Green", "iPhone 14 Blue", "iPhone SE Midnight", "iPad Pro Space Gray"]),
    myData(sectionType: "Бестселлер", productImage: ["AirPods Max Sky Blue", "iPad mini Pink", "Apple Watch Ultra Starlight", "Mac Studio"], productName: ["AirPods Max Sky Blue", "iPad mini Pink", "Apple Watch Ultra Starlight", "Mac Studio"]),
    myData(sectionType: "Рекомендуем", productImage: ["MacBook Pro 16 Silver", "iPhone 14 Pro Max Gold", "iPhone 14 Blue", "iMac 24 Green"], productName: ["MacBook Pro 16 Silver", "iPhone 14 Pro Max Gold", "iPhone 14 Blue", "iMac 24 Green"])
]

class HomeViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
        cell.collectionView.tag = indexPath.section
        cell.collectionView.reloadData()
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return myProducts.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return myProducts[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
//        if myProducts[section].sectionType == "Распродажа" {
//            view.tintColor = .systemYellow
//        }
    }
}
