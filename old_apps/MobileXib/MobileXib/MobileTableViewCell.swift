//
//  MobileTableViewCell.swift
//  MobileXib
//
//  Created by Mac on 18/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class MobileTableViewCell: UITableViewCell {

   // var mob : Mobile!
    @IBOutlet weak var lblMobName: UILabel!
    
    @IBOutlet weak var lblMobBattery: UILabel!
    
    @IBOutlet weak var lblMobPrice: UILabel!
    
    @IBOutlet weak var lblMobMeomery: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
