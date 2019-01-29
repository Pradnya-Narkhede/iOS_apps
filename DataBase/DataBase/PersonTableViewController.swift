//
//  PersonTableViewController.swift
//  DataBase
//
//  Created by Mac on 25/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonTableViewController: UITableViewController {
    
    var personArray = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            readDB()
        }

    func readDB(){
        let dir = try!
        FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        let dbPath = dir.appendingPathComponent("sqlDatabase3")
        
        print("Path : /(dbPath.path)")
        
        let m = FileManager()
        
        if m.fileExists(atPath: dbPath.path)
        {
            print("file exists")
        }
        else {
            m.createFile(atPath: dbPath.path, contents: nil, attributes: nil)
        }
        //Open Db
       var db: OpaquePointer? = nil
        
        if sqlite3_open(dbPath.path, &db) == SQLITE_OK{
            
            print("Database Opened")
            
            let query = "select * from Person"
            
            var statement : OpaquePointer? = nil
            
            if sqlite3_prepare(db, query.cString(using: .utf8),-1, &statement, nil) == SQLITE_OK
            {
            
            while sqlite3_step(statement) == SQLITE_ROW {
                
                let per = Person()
               
                let name = String.init(format: "%s", sqlite3_column_text(statement,0));
                let age = Int(sqlite3_column_int(statement, 1));
                let gender = String.init(format: "%s", sqlite3_column_text(statement,2));
                
                per.name = name;
                per.age = age;
                per.gender = gender;
                personArray.append(per)
                
            }
        }
        
    }
    
    sqlite3_close(db)
}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return personArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!
        PersonTableViewCell
        
        let temp = personArray[indexPath.row]
        
        cell.lblName.text = temp.name
        cell.lblAge.text = String(temp.age)
        cell.lblGender.text = temp.gender


        return cell
    }
    
}
