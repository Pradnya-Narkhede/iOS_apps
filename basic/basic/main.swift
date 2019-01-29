//
//  main.swift
//  basic
//
//  Created by Mac on 22/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation


/*var arr = [
            ["FirstName" : "pradnya", "LastName:" : "Narkhede"],
            ["FirstName" : "kajal", "LastName:" : "Patil"],
            ["FirstName" : "priyanka", "LastName:" : "More"],
            ["FirstName" : "supriya", "LastName:" : "Shinde"]
     ]
print(arr)
var firstNames = [String]()
for i in arr {
    let value = i["FirstName"]
    //firstNames = [value]
    
    print(value)
    
    //print(firstNames.value)
}*/
//let dictKeys  = Array(value)
//print(dictKeys)

//palindrome
var rev = 0
var num = 12241
var rem : Int = 0
var num1 :Int = 0
num1 = num
while(num != 0){
    rem = num % 10
    rev = rev * 10 + rem
    num = num/10
}
if(num1 == rev ){
    print("Number is palindrome")
  }else {
    print("Number is not Palindrome")
}

//armstrong
/*var sum = 0
var temp1 : Int = 500
var temp : Int = 0
var rem1 : Int = 0
//var temp : Int = 0
for num2 in 1...temp1 {
    //temp1 = num2
    temp = num2
    
    while temp != 0 {
        rem1 = temp % 10
        //rev = rev * 10 + rem
        temp = temp / 10
        sum = sum + (rem1 * rem1 * rem1)
        
    }
    if( num2 == sum ){
        print("Number is armstrong = \(num2)")
    }
}*/
