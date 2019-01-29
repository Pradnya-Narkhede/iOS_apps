//
//  DepartmentDisplayTableViewCell.swift
//  CompanyTest
//
//  Created by Vaibhav Narkhede on 06/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class DepartmentDisplayTableViewCell: UITableViewCell {

    @IBOutlet weak var lblDeptName: UILabel!
    
    @IBOutlet weak var lblDeptId: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        lblDeptName.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped))
        tapGesture.numberOfTapsRequired = 1
        lblDeptName.addGestureRecognizer(tapGesture)

    }
    @objc func lblTaped(){
//        let svc =  storyboard?.instantiateViewController(withIdentifier: "dtvc")as! EmployeeDisplayTableViewController
//        
//        self.navigationController?.pushViewController(svc, animated: true)
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
