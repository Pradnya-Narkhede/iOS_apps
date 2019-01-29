//
//  CompanyDisplayViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 29/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class CompanyDisplayViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate,UITableViewDelegate,UITableViewDataSource {
   var empArray = [Employee1]()
   var companyArray = [Company]()
    static var selectedCompany : Company!
    var context = AppDelegate().persistentContainer.viewContext
    
    
    @IBOutlet weak var tableData: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let req = NSFetchRequest<Company>.init(entityName: "Company")
        let result = try! context.fetch(req)
        companyArray = result
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return companyArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return companyArray[row].c_name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       
        CompanyDisplayViewController.selectedCompany = companyArray[row]
        empArray = CompanyDisplayViewController.selectedCompany.has?.allObjects as! [Employee1]
        tableData.reloadData()
        
    }
 //For Table
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return empArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = empArray[indexPath.row].e_name
        return cell
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
