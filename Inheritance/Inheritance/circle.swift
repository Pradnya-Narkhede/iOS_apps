//
//  circle.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class circle : shape {
    var radius : Int
    
    init(cX : Int,cY : Int,radius : Int){
        self.radius = radius
        super.init(centerX: cX,centerY: cY)
        
    }
    func display(){
        print("Radius : \(radius)")
        super.get()
    }
}
