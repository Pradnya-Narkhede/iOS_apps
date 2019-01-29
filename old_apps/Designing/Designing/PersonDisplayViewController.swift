//
//  PersonDisplayViewController.swift
//  Designing
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonDisplayViewController: UIViewController {

    var per : Person!
    
    @IBOutlet weak var lblPerson: UILabel!
    
    
    @IBOutlet weak var lblContact: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblPerson.text = per.personName
        lblContact.text = String(per.contactNumber)
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
