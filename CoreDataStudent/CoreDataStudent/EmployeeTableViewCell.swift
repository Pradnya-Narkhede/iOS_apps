//
//  EmployeeTableViewCell.swift
//  CoreDataStudent
//
//  Created by Mac on 28/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblId: UILabel!
    
    
    
    @IBOutlet weak var lblSal: UILabel!
    
    
    @IBOutlet weak var lblDesignation: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
