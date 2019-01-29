//
//  Employee.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
class employee1 : person1 {
    var salary : Int = 0
    var company : String = ""
    
    
    func setData1(n : String,g: String,a : Int,salary : Int,company : String){
        self.company = company
        self.salary = salary
        
        super.setData(name: n,gender : g, age: a)
    }
    func getc(){
        print(" Employee salary is \(salary) \n Comapny name is \(company)")
        super.get()
    }
}
