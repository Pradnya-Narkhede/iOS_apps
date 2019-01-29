//
//  DictionaryDisplayTableViewController.swift
//  plistDemo
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class DictionaryDisplayTableViewController: UITableViewController {
    
    //var storeArray = [Dict]()
    
    var nameArray = [String]()
    
    var rollnoArray = [Int]()
    
    var colgName : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "College", ofType: ".plist")
        
        let dict = NSMutableDictionary.init(contentsOfFile: path!)!
        
        let name = dict.object(forKey: "Names")as! NSArray //for array so we use object here
        
        for item in name {
            self.nameArray.append(item as! String)
        }
        
        let rollno = dict.object(forKey: "Roll_no")as! NSArray
        
        for item1 in rollno{
            self.rollnoArray.append(item1 as! Int)
        }
        
        colgName = dict.value(forKey: "CollegeName")as! String
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
     
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return nameArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! DictionaryDisplayTableViewCell
        
        let temp = nameArray[indexPath.row]
        
        let temp1 = rollnoArray[indexPath.row]
        
        cell.lblName.text = temp
        
        cell.lblRollno.text = String(temp1)
        
        cell.lblCollgname.text = colgName
        
        return cell
    }

    
}
