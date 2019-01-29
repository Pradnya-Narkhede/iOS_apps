//
//  PeopleTableTableViewController.swift
//  XIBDemoDeleted
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PeopleTableTableViewController: UITableViewController {
    
    var personarray = [Person]()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var p1 = Person()
        p1.name = "Pradnya"
        p1.age = 23
        p1.gender = "F"
        personarray.append(p1)
        
        var p2 = Person()
        p2.name = "Sneha"
        p2.age = 30
        p2.gender = "F"
        personarray.append(p2)
        
        var p3 = Person()
        p3.name = "Rishikesh"
        p3.age = 25
        p3.gender = "M"
        personarray.append(p3)
        
        let nib = UINib(nibName: "CustomPeopleTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "cell")
        
        
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
        return personarray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomPeopleTableViewCell //Typecasting here
        
          let temp = personarray[indexPath.row]
        
           cell.lblname.text = temp.name
           cell.lblage.text = String(temp.age)
           cell.lblgender.text = temp.gender
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
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
