//
//  HomeViewController.swift
//  shopApp
//
//  Created by Kirill Taraturin on 05.02.2023.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var products = Product.getProducts()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    



}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        var products = products
//        var saleProducts: [Product] = []
//
//        for product in products {
//            if product.onSale == true {
//                saleProducts.append(product)
//            }
//        }
//        return saleProducts.count
        return 3
    }
    

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "productsTableViewCell") as? ProductsTableViewCell else { return UITableViewCell() }
        
        return cell
    }
    

    
    
}
