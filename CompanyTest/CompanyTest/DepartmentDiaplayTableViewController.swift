//
//  DepartmentDiaplayTableViewController.swift
//  CompanyTest
//
//  Created by Vaibhav Narkhede on 06/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class DepartmentDiaplayTableViewController: UITableViewController {

   
    var context = AppDelegate().persistentContainer.viewContext
    var deptArray = [Department]()
    var companyName : String!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Company Name = \(String(describing: companyName))")
        let req = NSFetchRequest<Department>.init(entityName: "Department")
        let result = try! context.fetch(req)
        deptArray = result
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return deptArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! DepartmentDisplayTableViewCell
        let temp = deptArray[indexPath.row]
        cell.lblDeptId.text = String(temp.dept_id)
        cell.lblDeptName.text = temp.dept_name
    
        //    cell.lblDeptName.isUserInteractionEnabled = true
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped(sender:)))
//        tapGesture.numberOfTapsRequired = 1
//        cell.lblDeptName.addGestureRecognizer(tapGesture)
        
        

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
