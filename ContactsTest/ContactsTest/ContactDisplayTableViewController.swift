//
//  ContactDisplayTableViewController.swift
//  ContactsTest
//
//  Created by Mac on 26/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ContactDisplayTableViewController: UITableViewController {
    
    var tempArray = [Contacts]()
    
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
            
            let query = "select name from Contact"
            
            var statement : OpaquePointer? = nil
            
            if sqlite3_prepare(db, query.cString(using: .utf8),-1, &statement, nil) == SQLITE_OK
            {
                while sqlite3_step(statement) == SQLITE_ROW {
                    
                    let per = Contacts()
                    
                    let name = String.init(format: "%s", sqlite3_column_text(statement,0));
                    per.name = name;
                    
                    tempArray.append(per)
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
        return tempArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell()
        let temp = tempArray[indexPath.row]
        cell.textLabel?.text = temp.name
        
        
        return cell
    }
    
    
}
