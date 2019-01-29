//
//  DepartmentViewController.swift
//  CompanyTest
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit
import CoreData

class DepartmentViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var context = AppDelegate().persistentContainer.viewContext

    var companyArray = [Company]()
    static var selectedCompany : Company!
    @IBOutlet weak var lblTitle: UILabel!
    
    
    @IBOutlet weak var txtDeptId: UITextField!
    
    
    @IBOutlet weak var txtDeptName: UITextField!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    
    @IBAction func btnSaveClicked(_ sender: UIButton) {
        
        let object = NSEntityDescription.insertNewObject(forEntityName: "Department", into: context)as! Department
        object.dept_id = Int16(txtDeptId.text!)! 
        object.dept_name = txtDeptName.text
object.belongsTo = DepartmentViewController.selectedCompany
         try! context.save()
        let alert = UIAlertController(title: "Alert", message: "Data Saved SucessFully", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default) { (txt) in
            self.txtDeptId.text = ""
            self.txtDeptName.text = ""
        }
        alert.addAction(action)
        self.present(alert,animated: true,completion: nil)
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let req = NSFetchRequest<Company>.init(entityName: "Company")
        let result = try! context.fetch(req)
        companyArray = result

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return companyArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return companyArray[row].comp_Name
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        var temp = companyArray[row]
        DepartmentViewController.selectedCompany = temp
        
    }

    

}
