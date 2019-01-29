//
//  ArithmaticTableViewCell.swift
//  DataBase
//
//  Created by Mac on 31/12/18.
//  Copyright © 2018 Pradnya. All rights reserved.
//

import UIKit

class ArithmaticTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblOp1: UILabel!
    
    
    @IBOutlet weak var lblOperation: UILabel!
    
    
    
    @IBOutlet weak var lblOp2: UILabel!
    
    
    @IBOutlet weak var lblEql: UILabel!
    
    
    @IBOutlet weak var lblResult: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
