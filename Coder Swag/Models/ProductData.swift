//
//  ProductData.swift
//  Coder Swag
//
//  Created by Mohamed on 3/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation

struct product {
    
    private(set) public var imagename : String!
    private(set) public var productTitle : String!
    private(set) public var productPrice : String!
    
    init(imageName : String, productTitle: String, ProductPrice :String) {
        self.imagename = imageName
        self.productPrice = ProductPrice
        self.productTitle = productTitle
    }
    
    
}
