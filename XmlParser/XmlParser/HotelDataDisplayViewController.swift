//
//  HotelDataDisplayViewController.swift
//  XmlParser
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class HotelDataDisplayViewController: UIViewController {

    
    var temp : Hotel!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    @IBOutlet weak var lblName: UILabel!
    
    
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
    @IBOutlet weak var lblCalories: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = temp.name
        lblPrice.text = String(temp.price)
        lblDescription.text = temp.description
        lblCalories.text = String(temp.calories)
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
