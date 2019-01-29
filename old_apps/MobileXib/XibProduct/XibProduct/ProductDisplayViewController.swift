//
//  ProductDisplayViewController.swift
//  XibProduct
//
//  Created by Vaibhav Narkhede on 19/12/18.
//  Copyright © 2018 Vaibhav Narkhede. All rights reserved.
//

import UIKit

class ProductDisplayViewController: UIViewController {

    @IBOutlet weak var imgDetailData: UIImageView!
    
   
    @IBOutlet weak var lblProdName: UILabel!
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblQuantity: UILabel!
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
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
