//
//  ProductVc.swift
//  Coder Swag
//
//  Created by Mohamed on 3/4/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class ProductVc: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {

    @IBOutlet weak var productsCollections: UICollectionView!
    
    private(set) public var products = [product]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollections.dataSource = self
        productsCollections.delegate = self
    }
    
    func initProducts(category : CategoryData){
        products = DataServices.instance.getProducts(forcategoty: category.categName)
        navigationItem.title = category.categName
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for:  indexPath) as? ProductCell {
            cell.updateFrame(updateprouct: products[indexPath.row])
            return cell
        }else{
            return ProductCell()
        }
        
    }
    
    
}
