//
//  PlantDisplayViewController.swift
//  XmlPractice
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PlantDisplayViewController: UIViewController {
    
    var plant : Plant!
    @IBOutlet weak var lblTitle: UILabel!
    
    
    
    @IBOutlet weak var lblCommon: UILabel!
    
    
    
    @IBOutlet weak var lblBotnical: UILabel!
    
    
    
    @IBOutlet weak var lblZone: UILabel!
    
    
    @IBOutlet weak var lblLight: UILabel!
    
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblAvalibility: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblCommon.text = plant.common
        lblBotnical.text = plant.Botnical
        lblZone.text = String(plant.zone)
        lblLight.text = plant.light
        lblPrice.text = plant.price
        lblAvalibility.text  = String(plant.avalibility)
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
