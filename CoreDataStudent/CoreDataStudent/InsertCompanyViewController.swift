//
//  InsertCompanyViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 29/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class InsertCompanyViewController: UIViewController {

    var context = AppDelegate().persistentContainer.viewContext
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
      
        let object = NSEntityDescription.insertNewObject(forEntityName: "Company", into: context)as! Company
        
        object.c_name = txtCmpName.text
        object.c_id = Int16(txtCmpId.text!)!
        
        try! context.save()

        
    }
    
    @IBOutlet weak var txtCmpName: UITextField!
    
    
    @IBOutlet weak var txtCmpId: UITextField!
    
    
    
    
    
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
