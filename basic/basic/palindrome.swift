//
//  palindrome.swift
//  basic
//
//  Created by Mac on 22/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
//palindrome
 var rev = 0
 var num = 12241
 var rem : Int = 0
 var num1 : Int = 0
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
