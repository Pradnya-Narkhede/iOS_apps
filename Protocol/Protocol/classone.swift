//
//  classone.swift
//  Protocol
//
//  Created by Mac on 30/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
class classone : Operation{
    var num1 = 10
    var num2 = 20
    var add = 0
    var sub = 0
    var mul = 0
    var div = 0
    func addition(){
          add = num1 + num2
         //print("Addition = \(add)")
    }
    func subtraction(){
         sub = num1 - num2
        
    }

    func multiplication(){
         mul = num1 * num2
        
    }

    func division(){
         div = num1 / num2
  
    }
    func display() -> String {
        return " Addition = \(add) \n Subtraction = \(sub) \n Multiplication = \(mul) \n Division = \(div)"
    }

}

