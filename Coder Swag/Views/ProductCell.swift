//
//  ProductCell.swift
//  Coder Swag
//
//  Created by Mohamed on 3/3/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var productName :UILabel!
    @IBOutlet weak var producePrice :UILabel!
    
    func updateFrame(updateprouct : product){
        let image = UIImage(named: updateprouct.imagename)
        self.imageView.image = image
        //self.producePrice.text = updateprouct.productPrice
       // self.productName.text = updateprouct.productTitle
    }
}
