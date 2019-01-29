//
//  CompanyTableViewCell.swift
//  CompanyTest
//
//  Created by Vaibhav Narkhede on 06/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class CompanyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblCompId: UILabel!
    
    @IBOutlet weak var lblCompName: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        lblCompName.isUserInteractionEnabled = true
//        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(lblTaped))
//        tapGesture.numberOfTapsRequired = 1
//        lblCompName.addGestureRecognizer(tapGesture)
    }
    
    @objc func lblTaped() {
//        let alert = UIAlertController(title: "Alert", message: "Sucessfully", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(action)
//        self.present(alert,animated: true,completion:nil)
//    let svc =  storyboard?.instantiateViewController(withIdentifier: "dtvc")as! DepartmentDiaplayTableViewController
//        
//        self.navigationController?.pushViewController(svc, animated: true)
       
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
