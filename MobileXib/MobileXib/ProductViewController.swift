//
//  ProductViewController.swift
//  MobileXib
//
//  Created by Mac on 18/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var prodArray = [Product]()
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    @IBOutlet weak var imgData: UIImageView!
    @IBOutlet weak var txtProdName: UITextField!
    @IBOutlet weak var txtPrice: UITextField!
    
    @IBOutlet weak var txtQuantity: UITextField!
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        
        let p = Product()
        p.prodName = txtProdName.text
        p.prodPrice = Int(txtPrice.text!)
        p.Quantity = Int(txtQuantity.text!)
        p.ProdImg = "Apple.jpeg"
        p.Description = "It's a Best Product"
        prodArray.append(p)
        
        let alert = UIAlertController(title: "Alert", message: "Data Saved", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
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
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
