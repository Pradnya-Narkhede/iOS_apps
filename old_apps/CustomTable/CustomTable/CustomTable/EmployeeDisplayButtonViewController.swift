//
//  EmployeeDisplayButtonViewController.swift
//  CustomTable
//
//  Created by Mac on 14/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeDisplayButtonViewController: UIViewController {
   
    var emp = Employee()
    
    @IBOutlet weak var lblDetail: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblName.text = emp.empName
        lblId.text = String(emp.empId)
        //lblName.text = "Hi"
      lblEmail.text = emp.empEmail
       lblPhone.text = String(emp.empPhone)
        lblAddress.text = emp.empAdress
       
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
