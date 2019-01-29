//
//  CompanyViewController.swift
//  CompanyTest
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class CompanyViewController: UIViewController {
     var context = AppDelegate().persistentContainer.viewContext
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtCompId: UITextField!
    
    @IBOutlet weak var txtCompName: UITextField!
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        
        let object = NSEntityDescription.insertNewObject(forEntityName: "Company", into: context)as! Company
        object.comp_Id = Int16(txtCompId.text!)!
        object.comp_Name = txtCompName.text
        try! context.save()
        
        let alert = UIAlertController(title: "Alert", message: "Data Saved SucessFully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (txt) in
            self.txtCompId.text = ""
            self.txtCompName.text = ""
        }
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

 

}
