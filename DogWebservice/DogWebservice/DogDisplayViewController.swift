//
//  DogDisplayViewController.swift
//  DogWebservice
//
//  Created by Mac on 22/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class DogDisplayViewController: UIViewController {

    var temp : Dog!
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    @IBOutlet weak var lblBreed: UILabel!
    
    
    @IBOutlet weak var lblClassification: UILabel!
    
    
    @IBOutlet weak var lblLife: UILabel!
    
    
    @IBOutlet weak var lblTemperament: UILabel!
    
    
    @IBOutlet weak var lblHeight: UILabel!
    
    
    @IBOutlet weak var lblWeight: UILabel!
    
    
    @IBOutlet weak var lblColors: UILabel!
    
    
    @IBOutlet weak var lblInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgData.image = temp.imgData
        lblBreed.text = temp.breed
        lblClassification.text = temp.classification
        lblLife.text = temp.lifeSpan
        lblTemperament.text = temp.Temperament
        lblHeight.text = temp.Height
        lblWeight.text = temp.Weight
        lblColors.text = temp.Colors
        lblInfo.text = temp.info
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   }
