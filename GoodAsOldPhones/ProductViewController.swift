//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Amit on 21/06/17.
//  Copyright © 2017 Amit. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let p = product {
            productNameLabel.text = p.name
            if let i = p.productImage {
                productImageView.image = UIImage(named: i)
            }
        }
        // Do any additional setup after loading the view.
    }
    @IBAction func addCartButtonPressed(_ sender: Any) {
        print("Button Tapped")
        
        guard let product = product, let price = product.price else {
            return
        }
        
        let alertController = UIAlertController(title: "Save To Cart", message: "Saved to the cart with a price of \(price)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        let order = Order()
        order.order_id = 1
        order.product = product
        
        var orders = Orders.readOrdersFromArchive()
        orders?.append(order)
        if let orders = orders {
            if(Orders.saveOrdersToArchive(orders: orders)) {
                present(alertController, animated: true, completion: nil)
            }
        }
    }

}
