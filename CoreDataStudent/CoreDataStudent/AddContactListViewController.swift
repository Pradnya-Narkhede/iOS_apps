//
//  AddContactListViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 29/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class AddContactListViewController: UIViewController {

    //var tempArray = [ContactList]()
    var obj = ContactList()
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var txtContact: UITextField!
    
    
    @IBAction func btnSaveClick(_ sender: UIButton) {
    
        obj.name = txtName.text
        obj.contact = Int(txtContact.text!)
        ContactListTableViewController.contactArray.append(obj)
       
        
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
