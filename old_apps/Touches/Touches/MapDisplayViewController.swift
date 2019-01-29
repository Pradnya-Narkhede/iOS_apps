//
//  MapDisplayViewController.swift
//  Touches
//
//  Created by Mac on 22/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit

class MapDisplayViewController: UIViewController {

    @IBOutlet weak var imgData: UIImageView!
       
    
    
   // @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblSubtitle: UILabel!
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    var temp : MKAnnotation!

    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        //lblTitle.text = temp.title!
        lblSubtitle.text = temp.subtitle!
        
        var obj = temp as! CustomPointAnnotation
        
        lblDescription.text = obj.description
        imgData.image = UIImage(named: obj.imageData)
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
