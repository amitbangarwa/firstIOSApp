//
//  Product.swift
//  GoodAsOldPhones
//
//  Created by Amit on 21/06/17.
//  Copyright © 2017 Amit. All rights reserved.
//

import Foundation

class Product: NSObject, NSCoding {
    var name: String?
    var productImage: String?
    var cellImage: String?
    var price: Double?
    
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.name = aDecoder.decodeObject(forKey: "name") as! String?
        self.productImage = aDecoder.decodeObject(forKey: "productImage") as! String?
        self.cellImage = aDecoder.decodeObject(forKey: "cellImage") as! String?
        self.price = aDecoder.decodeObject(forKey: "price") as! Double?
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.name, forKey: "name")
        aCoder.encode(self.productImage, forKey: "productImage")
        aCoder.encode(self.cellImage, forKey: "cellImage")
        aCoder.encode(self.price, forKey: "price")
    }
}
