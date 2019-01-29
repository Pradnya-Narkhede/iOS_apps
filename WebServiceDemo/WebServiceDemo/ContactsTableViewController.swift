//
//  ContactsTableViewController.swift
//  WebServiceDemo
//
//  Created by Mac on 21/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    
    var contactArray = [Contacts]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            loadData()
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
                    
                    obj.id = tempObj.object(forKey : "id")as! String
                    obj.name = tempObj.object(forKey: "name")as! String
                    obj.email = tempObj.object(forKey: "email")as! String
                    obj.address = tempObj.object(forKey: "address")as! String
                    obj.gender = tempObj.object(forKey: "gender")as! String
                    
                    var phoneObj = tempObj.object(forKey: "phone")as! NSDictionary
                    obj.mobile = phoneObj.object(forKey: "mobile")as! String
                    obj.home = phoneObj.object(forKey: "home") as! String
                    obj.office = phoneObj.object(forKey: "office") as! String
                    
 
                    self.contactArray.append(obj)  //Append in array
                    
                    self.tableView.reloadData()
                    
                }//For
                
            }//do
                
                
        }//task
            task.resume()
        
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
        return contactArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactcell", for: indexPath)

       let temp = contactArray[indexPath.row]
        //cell.

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