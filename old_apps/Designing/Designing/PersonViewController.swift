//
//  PersonViewController.swift
//  Designing
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {

    var perArray = [Person]()
    
    @IBOutlet weak var txtPersonData: UITextField!
    
    
    @IBOutlet weak var txtContactData: UITextField!
    
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        let p = Person()
        
        p.personName = txtPersonData.text
        
        p.contactNumber = Int(txtContactData.text!)
        
        perArray.append(p)
        
    }
    
    @IBAction func passClicked(_ sender: UIButton) {
        
        let svc = storyboard?.instantiateViewController(withIdentifier: "ptvc")as!
        PersonTableTableViewController
        
    svc.tempArray = perArray
        
        self.navigationController?.pushViewController(svc, animated: true)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


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
