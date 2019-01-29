//
//  LoginTableViewCell.swift
//  LoginjsonTest
//
//  Created by Mac on 25/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import UIKit

class LoginTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblId: UILabel!
    
    @IBOutlet weak var lblIdDisplay: UILabel!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblnameDisplay: UILabel!
    
    @IBOutlet weak var lblPhone: UILabel!
    
    @IBOutlet weak var lblPhoneDisplay: UILabel!
    
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
