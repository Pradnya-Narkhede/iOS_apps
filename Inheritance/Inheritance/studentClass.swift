//
//  studentClass.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

class student1 : person1 {
    var rollno : Int = 0
    var institutename : String = ""
    
    
    func setData1(n : String,g: String,a : Int,rollno : Int,institutename : String){
        self.rollno = rollno
        self.institutename = institutename
        
        super.setData(name: n,gender : g, age: a)
    }
    func getc(){
        print(" student roll_no is \(rollno) \n Institute Name is \(institutename)")
        super.get()
    }
}
