//
//  ArithmaticDisplayTableViewController.swift
//  DataBase
//
//  Created by Mac on 31/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ArithmaticDisplayTableViewController: UITableViewController {

   var calculateArray = [CalculateOperation]()
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
            
            let query = "select * from Calculate"
            
            var statement : OpaquePointer? = nil
            
            if sqlite3_prepare(db, query.cString(using: .utf8),-1, &statement, nil) == SQLITE_OK
            {
                
                while sqlite3_step(statement) == SQLITE_ROW {
                    
                    let  obj = CalculateOperation()
                    
                    let op1 = Int(sqlite3_column_int(statement, 0));
                    let operation = String.init(format: "%s", sqlite3_column_text(statement,1));
                    
                    let op2 = Int(sqlite3_column_int(statement, 2));
                    let result = Int(sqlite3_column_int(statement, 3));
                    
                    obj.Op1 = op1;
                    obj.Operation = operation;
                    obj.Op2 = op2;
                    obj.result = result;
                    calculateArray.append(obj)
                    
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
        return calculateArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as!
        ArithmaticTableViewCell
        
        let temp = calculateArray[indexPath.row]
        cell.lblOp1.text = String(temp.Op1!)
        cell.lblOperation.text = temp.Operation
        cell.lblOp2.text = String(temp.Op2!)
        cell.lblResult.text = String(temp.result!)
        

      

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
