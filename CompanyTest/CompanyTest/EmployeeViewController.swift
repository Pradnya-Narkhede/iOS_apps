//
//  EmployeeViewController.swift
//  CompanyTest
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class EmployeeViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var context = AppDelegate().persistentContainer.viewContext
    
    var companyArray = [Company]()
    var deptArray = [Department]()
    static var selectedDepartment : Department!
    static var selectedCompany : Company!
    
    @IBAction func btnSaveClick(_ sender: UIButton) {
    let object = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)as! Employee
        object.emp_id = Int16(txtEmpId.text!)!
        object.emp_fname = txtEmpfname.text
        object.emp_lname = txtEmplname.text
        object.worksFor = EmployeeViewController.selectedDepartment
        try! context.save()
        let alert = UIAlertController(title: "Alert", message: "Data Saved SucessFully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (txt) in
            self.txtEmpId.text = ""
            self.txtEmpfname.text = ""
            self.txtEmplname.text = ""
        }
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
        
    }
    
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtEmpId: UITextField!
    
    
    @IBOutlet weak var txtEmpfname: UITextField!
    
    
    @IBOutlet weak var txtEmplname: UITextField!
    
    
    @IBOutlet weak var pickerViewComp: UIPickerView!
    
    @IBOutlet weak var pickerViewDept: UIPickerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let req = NSFetchRequest<Department>.init(entityName: "Department")
        let result = try! context.fetch(req)
        deptArray = result
        
        let req1 = NSFetchRequest<Company>.init(entityName: "Company")
        let result1 = try! context.fetch(req1)
        companyArray = result1
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0
        {
            return companyArray.count
        }
        //if component == 1
        else{
        return deptArray.count
        }
        //return 0
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0
        //if pickerView == pickerViewComp
        {
            return companyArray[row].comp_Name
        }
        //if component == 1
        //if pickerView == pickerViewDept
        else{
            return deptArray[row].dept_name
        }
       //return nil
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0
        //if pickerView == pickerViewComp
        {
            var temp = companyArray[row]
            EmployeeViewController.selectedCompany = temp
        }
        //if component == 1
        //if pickerView == pickerViewDept
       else {
            var temp = deptArray[row]
        EmployeeViewController.selectedDepartment = temp
        }
        
    }
  

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
