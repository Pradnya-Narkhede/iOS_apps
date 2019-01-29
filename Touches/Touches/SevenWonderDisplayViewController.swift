//
//  SevenWonderDisplayViewController.swift
//  Touches
//
//  Created by Mac on 24/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import MapKit
class SevenWonderDisplayViewController: UIViewController {
    var temp : MKAnnotation!

    @IBOutlet weak var imgData: UIImageView!
    
    @IBOutlet weak var lblCountry: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblRating: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = temp.title!
        lblCountry.text = temp.subtitle!
        let obj = temp as! CustomSevenWonder
        imgData.image = UIImage(named: obj.imageData)
        lblRating.text = obj.rating
        lblDescription.text = obj.desc

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
