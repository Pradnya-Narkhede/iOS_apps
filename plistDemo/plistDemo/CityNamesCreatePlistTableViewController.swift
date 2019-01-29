//
//  CityNamesCreatePlistTableViewController.swift
//  plistDemo
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class CityNamesCreatePlistTableViewController: UITableViewController {
    
    var names = [String]()
    
    var rootDic = NSMutableDictionary()
    
    var path : URL!
    
    @IBAction func barBtn(_ sender: UIBarButtonItem) {
        
        let alert = UIAlertController(title: "Add City", message: "Do You want to add new City", preferredStyle: .alert)
        
        alert.addTextField { (txt) in
            txt.placeholder = "Enter New City"
        }
        let action = UIAlertAction(title: "Ok", style: .default) { (txt) in
            
            let city = alert.textFields?[0].text
            self.names.append(city!)
            self.rootDic.setValue(self.names, forKey: "names")
            self.rootDic.write(toFile: self.path.path, atomically: true)
            
            self.names = self.rootDic.object(forKey: "names")as! [String]
            
            
            self.tableView.reloadData()
            print("\(self.rootDic)")
        }
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dir = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
        path = dir.appendingPathComponent("data.plist")
        print("Path : \(path!)")
        
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
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let cell = UITableViewCell()
        let temp = names[indexPath.row]as! String
        cell.textLabel?.text = temp
        

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
