//
//  ViewController.swift
//  DataBase
//
//  Created by Mac on 25/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtName: UITextField!
    
    
    
    
    @IBOutlet weak var txtId: UITextField!
    
    
    
    @IBAction func saveBtn(_ sender: UIButton) {
    
        let dir = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        let dbPath = dir.appendingPathComponent("sqlDatabase3")
        
        let m = FileManager()
        
        if m.fileExists(atPath: dbPath.path){
            print("File Exists")
            print("Path : \(dbPath)")
        }
        else {
            m.createFile(atPath: dbPath.path, contents: nil, attributes: nil)
        }
        
        
        var db: OpaquePointer? = nil
        
        if sqlite3_open(dbPath.path, &db) == SQLITE_OK
        {
            print("Database Open")
            
            let name = txtName.text
            let id = Int(txtId.text!)
            
            let query = String.init(format: "insert into Employee values ('%@',%d)", name!,id!)
            
            if sqlite3_exec(db, query, nil, nil, nil) == SQLITE_OK{
                print("Data Inserted")
            }
            else {
                 print("Not Inserted")
            }
        }
            else{
              print("Database not open")
            }
                sqlite3_close(db)
        }
        

    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

