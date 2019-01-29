//
//  WebserviceMapDispalyViewController.swift
//  Touches
//
//  Created by Mac on 24/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class WebserviceMapDispalyViewController: UIViewController {

   var temp : MKAnnotation!
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = temp.title!
        lblAddress.text = temp.subtitle!
        let obj = temp as! SweetShop
        imgData.image = obj.icon
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  
}
