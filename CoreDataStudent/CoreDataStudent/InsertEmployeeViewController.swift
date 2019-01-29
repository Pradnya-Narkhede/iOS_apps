//
//  InsertEmployeeViewController.swift
//  CoreDataStudent
//
//  Created by Mac on 29/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class InsertEmployeeViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

     var context = AppDelegate().persistentContainer.viewContext
    
     var companyArray = [Company]()
    
    static var selectedCompany : Company!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtEmpName: UITextField!
    
    
    @IBOutlet weak var txtEmpId: UITextField!
    
    
    @IBOutlet weak var txtEmpSalary: UITextField!
    
    
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
       
        let object = NSEntityDescription.insertNewObject(forEntityName: "Employee1", into: context)as! Employee1
        object.e_name = txtEmpName.text
        object.e_salary = Int16(txtEmpSalary.text!)!
        object.e_id = Int16(txtEmpId.text!)!
        object.worksFor = InsertEmployeeViewController.selectedCompany
        try! context.save()
    }
    
    
    
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
        var temp = companyArray[row]
        InsertEmployeeViewController.selectedCompany = temp
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
 
    
}
