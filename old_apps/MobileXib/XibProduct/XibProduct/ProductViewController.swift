//
//  ProductViewController.swift
//  XibProduct
//
//  Created by Vaibhav Narkhede on 18/12/18.
//  Copyright © 2018 Vaibhav Narkhede. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    var prodArray = [Product]()
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var txtProductName: UITextField!
    
    
    @IBOutlet weak var txtPrice: UITextField!
    
    @IBOutlet weak var txtQuantity: UITextField!
    
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        
        var p = Product()
        p.prodName = txtProductName.text
        p.Price = Int(txtPrice.text!)
        p.Quantiity = Int(txtQuantity.text!)
        p.prodImg = " "
        prodArray.append(p)
        
        
        
        let alert = UIAlertController(title: "Alert", message: "Data Saved", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
         self.present(alert,animated: true,completion: nil)
    }
    
    
    @IBAction func btnPassClicked(_ sender: UIButton) {
        let svc = ProductTableViewController()
        
        svc.tempArray = prodArray
        
        self.navigationController?.pushViewController(svc, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
