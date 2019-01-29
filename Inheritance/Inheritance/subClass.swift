//
//  subClass.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class sub : Super {
    var number : Int = 10
    
    func show() {
        print("Number is \(number)")
        super.display()
    }
    override func displayOne(){
        print("It's Overriden Function")
        super.displayOne()
    }
}
