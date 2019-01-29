//
//  CartoonTableViewCell.swift
//  WebServiceDemo
//
//  Created by Mac on 20/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class CartoonTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblName: UILabel!
    
    
    @IBOutlet weak var lblDob: UILabel!
    
    
    @IBOutlet weak var lblCompany: UILabel!
    
    @IBOutlet weak var imgData: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
