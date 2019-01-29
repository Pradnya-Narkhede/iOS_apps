//
//  ImageDownloadOperation.swift
//  WebServiceDemo
//
//  Created by Mac on 03/01/19.
//  Copyright © 2019 Pradnya. All rights reserved.
//

import Foundation
import UIKit

class ImageDownloadOperation : Operation {
    
    var c : Cartoon!
    
    override func main(){
        let imageUrl = c.imgUrl
        
        let imageData = try! Data.init(contentsOf: URL(string: imageUrl!)!)
        c.imgData = UIImage(data: imageData)
        
        let n = Notification.init(name: Notification.Name(rawValue: "Some"), object: c, userInfo: nil)
        NotificationCenter.default.post(n)
        
    }
}
