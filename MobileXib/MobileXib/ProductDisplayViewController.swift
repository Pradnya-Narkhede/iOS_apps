//
//  ProductDisplayViewController.swift
//  MobileXib
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ProductDisplayViewController: UIViewController {

    var prod : Product!
    
    @IBOutlet weak var imgDetailData: UIImageView!
    
    @IBOutlet weak var lblProdName: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblQuantity: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lblProdName.text = prod.prodName
        lblPrice.text = String(prod.prodPrice)
        lblQuantity.text = String(prod.Quantity)
        imgDetailData.image = UIImage(named: prod.ProdImg)
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
