//
//  File.swift
//  Coder Swag
//
//  Created by Mohamed on 2/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
struct CategoryData {
   private(set)  public var categName : String!
   private(set)  public var categImage : String!
    
    init(categName:String , categImg :String ) {
        self.categImage = categImg
        self.categName = categName
    }
    

}
