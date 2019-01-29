//
//  PersonViewController.swift
//  DataBase
//
//  Created by Mac on 25/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonViewController: UIViewController {
    var array = [Person]()
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    @IBOutlet weak var txtAge: UITextField!
    
    
    @IBOutlet weak var txtGender: UITextField!
    
    
    @IBAction func btnSave(_ sender: UIButton) {
        let dir = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        let dbPath = dir.appendingPathComponent("sqlDatabase3")
        
        let m = FileManager()
        
        if m.fileExists(atPath: dbPath.path)
        {
            print("File Exists")
            print("Path : \(dbPath.path)")
        }
        else
        {
            m.createFile(atPath: dbPath.path, contents: nil, attributes: nil)
            
        }
        var db : OpaquePointer? = nil
        
        if sqlite3_open(dbPath.path, &db) == SQLITE_OK
        {
            let name = txtName.text
            let age = Int(txtAge.text!)
            let gender = txtGender.text
            
            let query = String.init(format: "insert into Person values('%@',%d,'%@')",name!,age!,gender!)
            
            
            if sqlite3_exec(db,query, nil, nil, nil) == SQLITE_OK
            {
                print("Data Inserted")
            }
            else {
                print("Data Not Inserted")
            }
        }
        else {
            print("Database Open")
            
        }
        sqlite3_close(db)
    }
    
    @IBAction func btnPass(_ sender: UIButton) {
        
        let svc = storyboard?.instantiateViewController(withIdentifier: "ptvc")as!
        PersonTableViewController
        
        svc.personArray = array
        
        self.navigationController?.pushViewController(svc, animated: true)
    
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
