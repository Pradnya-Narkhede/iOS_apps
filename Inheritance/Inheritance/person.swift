//
//  person.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class person1 {
    var name : String = ""
    var gender : String = ""
    var age : Int = 0
    func setData(name : String,gender : String,age : Int){
        self.name = name
        self.gender = gender
        self.age = age
    }
    func get(){
        print(" Person Name is \(name) \n Gender is \(gender) \n Age is \(age)")
    }
}
