//
//  EmployeeTableViewCell.swift
//  CustomTable
//
//  Created by Mac on 17/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

   var empArray = [Employee]()
    
    
    @IBOutlet weak var btnInfo: UIButton!
    
    @IBOutlet weak var lblName: UILabel!
   
    @IBOutlet weak var lblId: UILabel!
    
   
    @IBOutlet weak var imgData: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgData.layer.cornerRadius = 102
        imgData.layer.masksToBounds = false
        imgData.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
