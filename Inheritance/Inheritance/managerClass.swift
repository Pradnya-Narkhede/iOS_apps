//
//  managerClass.swift
//  Inheritance
//
//  Created by Mac on 01/12/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
class manager : employee{
    var department : String
    
    init(n : String, a : Int,quali : String,id : Int,sal : Int,department : String){
        self.department = department
        super.init(n: n, a: a, qualification: quali, id: id,salary: sal )
    }
    func display(){
        print(" Department : \(department)")
        //super.get()
        super.getc()
    }

}
