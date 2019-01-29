
//
//  EmployeeTableViewController.swift
//  CustomTable
//
//  Created by Mac on 14/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeTableViewController: UITableViewController {

    var empArray = [Employee]()
    var tem : Employee!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let e = Employee()
        e.empName = "Pradnya"
        e.empId = 2
        e.empEmail = "pradnya@gmail.com"
        e.empPhone = 124456
        e.empAdress = "Bijalinagar"
        e.empImage = "Apple.jpeg"
        empArray.append(e)
        
        let e1 = Employee()
        e1.empName = "Sneha"
        e1.empId = 3
        e1.empEmail = "pradnya@gmail.com"
        e1.empPhone = 124456
        e1.empAdress = "Bijalinagar"
        e1.empImage = "Apple.jpeg"
        empArray.append(e1)
        
        let e2 = Employee()
        e2.empName = "Rishikesh"
        e2.empId = 4
        e2.empEmail = "pradnya@gmail.com"
        e2.empPhone = 124456
        e2.empAdress = "Bijalinagar"
        e2.empImage = "Apple.jpeg"
        empArray.append(e2)
        
        let e3 = Employee()
        e3.empName = "Priti"
        e3.empId = 5
        e3.empEmail = "pradnya@gmail.com"
        e3.empPhone = 124456
        e3.empAdress = "Bijalinagar"
        e3.empImage = "Apple.jpeg"
        empArray.append(e3)
        
        let e4 = Employee()
        e4.empName = "Anjali"
        e4.empId = 6
        e4.empEmail = "pradnya@gmail.com"
        e4.empPhone = 124456
        e4.empAdress = "Bijalinagar"
        e4.empImage = "Apple.jpeg"
        empArray.append(e4)
        
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return empArray.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)as! EmployeeTableViewCell
       
       let temp = empArray[indexPath.row]
        
        cell.lblName.text = temp.empName
        
        cell.lblId.text = String(temp.empId)
        
        cell.imgData.image = UIImage(named: temp.empImage)
        
        cell.btnInfo.tag = indexPath.row
        
        cell.btnInfo.addTarget(self,action: #selector(btnClicked),for: .touchUpInside)
        
        
    
     return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        let svc = storyboard?.instantiateViewController(withIdentifier: "edvc")as! EmployeeDisplayViewController
//        svc.emp = empArray[indexPath.row]
//        self.navigationController?.pushViewController(svc, animated: true)
//        
//    }
//    
    @objc func btnClicked(){
        let svc = storyboard?.instantiateViewController(withIdentifier: "edbvc")as! EmployeeDisplayButtonViewController
        
         svc.emp = self.tem
       //svc.emp1 = empArray[indexPath.row]
        self.navigationController?.pushViewController(svc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "edbv" {
            let svc = segue.destination as! EmployeeDisplayButtonViewController
            
        }
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
