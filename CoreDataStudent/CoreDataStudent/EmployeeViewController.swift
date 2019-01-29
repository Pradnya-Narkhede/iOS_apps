//
//  EmployeeViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 28/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class EmployeeViewController: UIViewController {
    
    var context = AppDelegate().persistentContainer.viewContext
    
    @IBOutlet weak var lblTitle: UILabel!
  
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtId: UITextField!
    
    
    @IBOutlet weak var txtSal: UITextField!
    
    
    @IBOutlet weak var txtDesignation: UITextField!
    
    
    @IBAction func btnSaveClick(_ sender: UIButton) {
       
        let alert = UIAlertController(title: "Alert", message: "Data Saved", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
        
        let object = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)as! Employee
        
        object.e_name = txtName.text
        object.e_id = Int16(txtId.text!)!
        
        object.e_salary = Int16(txtSal.text!)!
        object.e_designation = txtDesignation.text
        try! context.save()
    }
    
    
    @IBAction func btnPassClick(_ sender: UIButton) {
    
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
