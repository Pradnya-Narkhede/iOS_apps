//
//  CustomPeopleTableViewCell.swift
//  XIBDemoDeleted
//
//  Created by Mac on 10/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CustomPeopleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblname: UILabel!
    
    @IBOutlet weak var lblage: UILabel!
    
    @IBOutlet weak var lblgender: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

    
}
