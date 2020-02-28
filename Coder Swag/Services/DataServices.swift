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
    func getCategData() -> [CategoryData] {
        return categs
    }
}
