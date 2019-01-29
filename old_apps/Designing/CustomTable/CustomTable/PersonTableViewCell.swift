//
//  PersonTableViewCell.swift
//  CustomTable
//
//  Created by Mac on 13/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    
    
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblDob: UILabel!
    
    @IBOutlet weak var imageData: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
