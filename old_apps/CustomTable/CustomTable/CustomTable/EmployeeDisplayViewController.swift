//
//  EmployeeDisplayViewController.swift
//  CustomTable
//
//  Created by Mac on 14/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeDisplayViewController: UIViewController {

    var emp : Employee!
    
    
    @IBOutlet weak var imgData: UIImageView!
    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblId: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.imgData.layer.cornerRadius = self.imgData.frame.size.width/2
//        self.imgData.clipsToBounds = true
        imgData.layer.cornerRadius = 125
        imgData.layer.masksToBounds = false
        imgData.clipsToBounds = true
        
        imgData.image = UIImage(named: emp.empImage)
        lblName.text = emp.empName
        lblId.text = String(emp.empId)

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
