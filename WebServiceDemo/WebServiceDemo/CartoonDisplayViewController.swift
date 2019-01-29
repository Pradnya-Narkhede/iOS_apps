//
//  CartoonDisplayViewController.swift
//  WebServiceDemo
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CartoonDisplayViewController: UIViewController {

    var dtemp : Cartoon!
    
    @IBOutlet weak var imgDisplayData: UIImageView!
    
    
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblDob: UILabel!
    
    
    @IBOutlet weak var lblCompany: UILabel!
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblName.text = dtemp.name
        lblDob.text = String("\(dtemp.day!)/\(dtemp.month!)/\(dtemp.year!)")
        lblCompany.text = dtemp.company
        lblDescription.text = dtemp.description
        imgDisplayData.image = dtemp.imgData
        
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
