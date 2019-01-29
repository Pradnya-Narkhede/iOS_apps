//
//  shape.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
class shape {
    var centerX : Int
    var centerY : Int
    init (centerX : Int,centerY : Int){
        self.centerX = centerX
        self.centerY = centerY
    }
    func get(){
        print("Centers \(centerX) : \(centerY)")
    }
}
