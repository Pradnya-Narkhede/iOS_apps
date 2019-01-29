//
//  PersonTableViewCell.swift
//  DataBase
//
//  Created by Mac on 25/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class PersonTableViewCell: UITableViewCell {

    //var temp : Person!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblAge: UILabel!
    
    
    @IBOutlet weak var lblGender: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
