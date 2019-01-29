//
//  PersonDisplayViewController.swift
//  CustomTable
//
//  Created by Mac on 14/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonDisplayViewController: UIViewController {

    var per : Person!
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblAge: UILabel!
    
    @IBOutlet weak var lblDob: UILabel!
    
    
    @IBOutlet weak var lblGender: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = per.personName
        lblAge.text = String(per.personAge)
        lblDob.text = String(per.personAge)
        lblGender.text = per.personGender
        imageDisplay.image = UIImage(named : per.image)
        
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
