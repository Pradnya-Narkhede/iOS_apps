//
//  HotelDataTableViewCell.swift
//  XmlParser
//
//  Created by Mac on 19/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class HotelDataTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblDescription: UILabel!
    
    
    @IBOutlet weak var lblCalories: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
