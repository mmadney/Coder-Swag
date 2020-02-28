//
//  CategoryCell.swift
//  Coder Swag
//
//  Created by Mohamed on 2/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categLbl: UILabel!
    @IBOutlet weak var categBackground: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updatecategoryCell(categ : CategoryData){
        categLbl.text = categ.categName
        categBackground.image = UIImage(named: categ.categImage)
    }
    
}
