//
//  File.swift
//  Coder Swag
//
//  Created by Mohamed on 2/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import Foundation
class DataServices {
    
    static let instance = DataServices()
    
    private let categs = [
        CategoryData(categName: "SHIRTS", categImg: "shirts.png"),
        CategoryData(categName: "HOODIES", categImg: "hoodies.png"),
        CategoryData(categName: "Hats", categImg: "hats.png"),
        CategoryData(categName: "DIGITAL", categImg: "digital.png")
    ]
    private let hats = [
        product(imageName: "hat01.png", productTitle: "Devslopes logo Graphics beanie", ProductPrice: "$25"),
        product(imageName: "hat02.png", productTitle: "Devslopes logo Graphics beanie", ProductPrice: "$25"),
        product(imageName: "hat03.png", productTitle: "Devslopes logo Graphics beanie", ProductPrice: "$25"),
        product(imageName: "hat04.png", productTitle: "Devslopes logo Graphics beanie", ProductPrice: "$25"),
    ]
    private let shirts = [
        product(imageName: "shirt01.png", productTitle: "Devslopes logo Graphics shits", ProductPrice: "$25"),
        product(imageName: "shirt02.png", productTitle: "Devslopes logo Graphics shits", ProductPrice: "$25"),
        product(imageName: "shirt03.png", productTitle: "Devslopes logo Graphics shits", ProductPrice: "$25"),
        product(imageName: "shirt04.png", productTitle: "Devslopes logo Graphics shits", ProductPrice: "$25"),
    ]
    private let hoodies = [
        product(imageName: "hoodie01.png", productTitle: "Devslopes logo Graphics Hoodies", ProductPrice: "$25"),
        product(imageName: "hoodie02.png", productTitle: "Devslopes logo Graphics Hoodies", ProductPrice: "$25"),
        product(imageName: "hoodie03.png", productTitle: "Devslopes logo Graphics Hoodies", ProductPrice: "$25"),
        product(imageName: "hoodie04.png", productTitle: "Devslopes logo Graphics Hoodies", ProductPrice: "$25"),
    ]
    
    
    
    func getCategData() -> [CategoryData] {
        return categs
    }
    
    func getProducts(forcategoty title:String) -> [product] {
        switch title {
        case "Hats":
            return getHats()
        case"SHIRTS":
            return getShirts()
        case "HOODIES" :
            return getHoodies()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [product]{
        return hats
    }
    func getHoodies() -> [product] {
        return hoodies
    }
    func getShirts() -> [product] {
        return shirts
    }
}
