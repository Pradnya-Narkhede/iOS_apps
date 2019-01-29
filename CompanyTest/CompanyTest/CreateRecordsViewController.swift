
//
//  CreateRecordsViewController.swift
//  CompanyTest
//
//  Created by Mac on 02/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class CreateRecordsViewController: UIViewController,UIActionSheetDelegate {

   
    @IBAction func CreateBtn(_ sender: UIButton) {
        //let actionSheet  = UIActionSheet(title: "Choose Option", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: nil, otherButtonTitles: "Save", "Delete")
        
//        actionSheet.addButton(withTitle: "Company")
//        actionSheet.addButton(withTitle: "Employee")
//            
//            
//        actionSheet.show(in: self.view)
        
        let optionMenu = UIAlertController(title: nil, message: "Choose Option", preferredStyle: .actionSheet)
        
        let compAction = UIAlertAction(title: "Company", style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Company")
            
            let svc = self.storyboard?.instantiateViewController(withIdentifier: "cvc")as! CompanyViewController
           
            self.navigationController?.pushViewController(svc, animated: true)
         
        })
        
        let deptAction = UIAlertAction(title: "Department", style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            
            let svc = self.storyboard?.instantiateViewController(withIdentifier: "dvc")as! DepartmentViewController
            
            self.navigationController?.pushViewController(svc, animated: true)

        })
        
        let empAction = UIAlertAction(title: "Employee", style: .default, handler:
        {
            (alert: UIAlertAction!) -> Void in
            
            let svc = self.storyboard?.instantiateViewController(withIdentifier: "evc")as! EmployeeViewController
            
            self.navigationController?.pushViewController(svc, animated: true)

        })
        

        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:
        {
            (alert: UIAlertAction!) -> Void in
            print("Cancelled")
        })
        optionMenu.addAction(compAction)
        optionMenu.addAction(deptAction)
        optionMenu.addAction(empAction)
        
        optionMenu.addAction(cancelAction)
        self.present(optionMenu, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
