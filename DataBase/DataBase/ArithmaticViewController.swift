//
//  ArithmaticViewController.swift
//  DataBase
//
//  Created by Mac on 31/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ArithmaticViewController: UIViewController {

    var array = [CalculateOperation]()
    
    @IBOutlet weak var txtNum1: UITextField!
    
    
    @IBOutlet weak var txtNum2: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    @IBOutlet weak var segment: UISegmentedControl!
    @IBAction func segmentOperation(_ sender: UISegmentedControl) {
        
        var selectedSeg = segment.selectedSegmentIndex
        
        let op1 = Int(txtNum1.text!)
        let op2 = Int(txtNum2.text!)
        
        
        switch(selectedSeg) {
        case 0 :
            lblResult.text = String(op1! + op2!)
        case 1 :
            lblResult.text = String(op1! - op2!)
        case 2 :
            lblResult.text = String(op1! * op2!)
        case 3 :
            lblResult.text = String(op1! / op2!)
        default :
            lblResult.text = "Result"
        }

    }
    
    @IBAction func DiplayClicked(_ sender: UIButton) {
        let svc = storyboard?.instantiateViewController(withIdentifier: "adtvc")as!
        ArithmaticDisplayTableViewController
        
        svc.calculateArray = array
        
        self.navigationController?.pushViewController(svc, animated: true)

    }
    
    @IBAction func saveClicked(_ sender: UIButton) {
        
        
        let dir = try!
            FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        
        let dbPath = dir.appendingPathComponent("sqlDatabase3")
        print("Path : \(dbPath.path)")
        
        let m = FileManager()
        
        if m.fileExists(atPath: dbPath.path)
        {
            print("File Exists")
            
        }
        else
        {
            m.createFile(atPath: dbPath.path, contents: nil, attributes: nil)
            
        }
        var db : OpaquePointer? = nil
        
        if sqlite3_open(dbPath.path, &db) == SQLITE_OK
        {
           
            let op1 = Int(txtNum1.text!)
            let operation = segment.titleForSegment(at: segment.selectedSegmentIndex)

            let op2 = Int(txtNum2.text!)
            let result = Int(lblResult.text!)
            
            
            let query = String.init(format: "insert into Calculate values(%d,'%@',%d,%d)",op1!,operation!,op2!,result!)
            
            
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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
