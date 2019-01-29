//
//  personClass.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class person {
    var name : String
    var age : Int
    init(name : String,age : Int){
        self.name = name
        self.age = age
    }
    func get(){
        print(" Person Name is \(name) \n Age is \(age)")
    }
}
