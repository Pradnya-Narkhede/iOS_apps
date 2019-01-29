//
//  EmployeeClass.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class employee : person {
    var qualification : String
    var id : Int
    var salary : Int
    
    init(n : String, a : Int,qualification : String,id : Int,salary : Int){
        self.qualification = qualification
        self.id = id
        self.salary = salary
        super.init(name: n, age: a)
    }
     func getc(){
        print(" Person Qualification is \(qualification) \n id is \(id) \n Salary = \(salary)")
        super.get()
    }
}
