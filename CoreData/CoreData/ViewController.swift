//
//  ViewController.swift
//  CoreData
//
//  Created by Mac on 28/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UIViewController {

    var context = AppDelegate().persistentContainer.viewContext
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var txtRoll: UITextField!
    @IBAction func btnSave(_ sender: UIButton) {
       
        let object = NSEntityDescription.insertNewObject(forEntityName: "Student",into: context)as! Student
        object.s_name = txtName.text
        object.s_roll = Int16(txtRoll.text!)
        try! context.save()
    
    }
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

