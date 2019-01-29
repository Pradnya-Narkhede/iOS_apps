//
//  ProductTableViewCell.swift
//  XibProduct
//
//  Created by Vaibhav Narkhede on 19/12/18.
//  Copyright © 2018 Vaibhav Narkhede. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblProdName: UILabel!
    
    
    @IBOutlet weak var lblPrice: UILabel!
    
    
    @IBOutlet weak var lblQuantity: UILabel!
    
    
    @IBOutlet weak var imgDisplayData: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
