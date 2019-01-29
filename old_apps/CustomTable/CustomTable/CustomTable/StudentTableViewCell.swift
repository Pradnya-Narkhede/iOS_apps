//
//  StudentTableViewCell.swift
//  CustomTable
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblRollno: UILabel!
    
    @IBOutlet weak var lblMailid: UILabel!
    
    @IBOutlet weak var lblMarks: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
