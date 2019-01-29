//
//  ContactCollectionViewController.swift
//  ContactsTest
//
//  Created by Mac on 26/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"


class ContactCollectionViewController: UICollectionViewController {
    
    var contactArray = [Contacts]()
    @IBAction func barButton(_ sender: UIBarButtonItem) {
        
        let cdv = ContactDisplayTableViewController()
        
        self.navigationController?.pushViewController(cdv, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "Cell")
        
        // Do any additional setup after loading the view.
    }
    func loadData(){
        
        let url = URL(string: "https://api.androidhive.info/contacts/")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        let session = URLSession.shared
        
        let task = session.dataTask(with: request)      //Closure
        {
            (data : Data?,response : URLResponse?,error : Error?) in
            
            if error != nil{
                print("Error")
            }
            
            do {
                let rootDictionary = try!
                    JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers)as! NSDictionary
                
                let contacts = rootDictionary.object(forKey: "contacts")as! NSArray
                
                for item in contacts {
                    var tempObj = item as! NSDictionary
                    
                    let obj = Contacts()
                    obj.name = tempObj.object(forKey: "name")as! String
                    obj.email = tempObj.object(forKey: "email")as! String
                    obj.address = tempObj.object(forKey: "address")as! String
                    obj.gender = tempObj.object(forKey: "gender")as! String
                    
                    self.contactArray.append(obj)  //Append in array
                    self.collectionView?.reloadData()
                }//For
            }//do
        }//task
                task.resume()
}
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return contactArray.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "view", for: indexPath)as! ContactCollectionViewCell
        let temp = contactArray[indexPath.row]
        cell.lblName.text = temp.name
        cell.lblEmail.text = temp.email
        cell.lblAddress.text = temp.address
        cell.lblGender.text = temp.gender
        // Configure the cell
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let alert = UIAlertController(title: "Add Favourite", message: "Are u sure u want to Add", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes", style: .default, handler: { [weak alert] (_) in
            
            let dir = try!
                FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
            
            let dbPath = dir.appendingPathComponent("sqlDatabase3")
            
            let m = FileManager()
            
            if m.fileExists(atPath: dbPath.path){
                print("File Exists")
                print("Path : /(dbPath)")
            }
            else {
                m.createFile(atPath: dbPath.path, contents: nil, attributes: nil)
            }
            
            
            var db: OpaquePointer? = nil
            
            if sqlite3_open(dbPath.path, &db) == SQLITE_OK
            {
                print("Database Open")
                
                var temp = self.contactArray[indexPath.row]
                
                let name = temp.name
                let email = temp.email
                let address = temp.address
                let gender = temp.gender
                
                
                let query = String.init(format: "insert into Contact values ('%@','%@','%@','%@')", name!,email!,address!,gender!)
                
                if sqlite3_exec(db, query, nil, nil, nil) == SQLITE_OK {
                    
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
            
            })
        let action1 = UIAlertAction(title: "No", style: .cancel, handler: nil)
        alert.addAction(action)
        alert.addAction(action1)
        self.present(alert,animated: true,completion: nil)
        
        
    }
    
    
}
