//
//  ViewController.swift
//  Coder Swag
//
//  Created by Mohamed on 2/28/20.
//  Copyright © 2020 Mohamed. All rights reserved.
//

import UIKit

class CategoriesVc: UIViewController , UITableViewDataSource , UITableViewDelegate {
   
    @IBOutlet weak var categTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categTable.dataSource = self
        categTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataServices.instance.getCategData().count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let category = DataServices.instance.getCategData()[indexPath.row]
            cell.updatecategoryCell(categ: category)
            return cell
        }else{
          return CategoryCell()
        }
        
       }
       
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataServices.instance.getCategData()[indexPath.row]
        performSegue(withIdentifier: "goToProducts", sender: category)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destionVc = segue.destination as? ProductVc {
            ClearNavbarTitle()
            assert(sender as? Category == nil)
            destionVc.initProducts(category: sender as! CategoryData)
            
        }
    }
    func ClearNavbarTitle(){
        let barBtn = UIBarButtonItem()
        barBtn.title = ""
        navigationItem.backBarButtonItem = barBtn
    }



}

		
