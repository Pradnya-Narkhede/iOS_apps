//: Playground - noun: a place where people can play

import UIKit

/*var value = 1
var num1 = 13
var num2 = 20
var num3 = 30
print("1.Even or odd")
print("2.Positive or Negative")
print("3.Greater among 3")

switch(value){
    
case 1:
    if(num1%2==0){
        print("Number \(num1) is Even")
    }
    else{
        print("Number \(num1) is Odd")
    }
    
case 2:
    
    if(num1>0){
        print("Number \(num1) is Positive")
    }
    else{
        print("Number \(num1) is Negative")
   }
    
case 3:
    
    if(num1>num2 && num1>num3){
        print("Number \(num1) is Greater")
     }
    else if(num2>num1 && num2>num3){
        print("Number \(num2) is Greater")
    } else{
        print("Number \(num3) is Greater")
    }
    
default :
    print("Invalid Choice")
}*/
//array in dictionary

var arr = [
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
    firstNames.append(value!)
    //print(value)
 }
    print(firstNames)


//palindrome
/*var rev = 0
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

//Armstrong

var sum = 0
//var temp1 : Int = 500
var temp : Int = 0
var rem1 : Int = 0
//var temp : Int = 0
for num2 in 1...1000 {
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

var stringsArray = ["Hello","hi","Hello","abc","Hello","Hi","abc"]
var countedStrings = [String : Int]()


for i in stringsArray {
    let val = i
    countedStringseys = i
    
    //countedStrings.append(val!)
}
print(i)

print(countedStrings)


