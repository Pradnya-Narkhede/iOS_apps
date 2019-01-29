//
//  main.swift
//  dict1
//
//  Created by Mac on 22/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation

var stringsArray = ["Hello","Hi","Hello","abc","Hello","Hi","abc"]
var countedStrings = [String : Int]()  //Empty Dictionary


for i in stringsArray {
    var count = 0
    for j in stringsArray {
        if i == j {
            count += 1
        }
    }
    countedStrings[i] = count
}
print(countedStrings)


/*//Encoded dictionary
var code = ["a":"z","b":"y","c":"x","d":"w","e":"v","f":"u","g":"t","h":"s","i":"r","j":"q","k":"p","l":"o","m":"n","n":"m","o":"l","p":"k","q":"j","r":"i","s":"h","t":"g","u":"f","v":"e","w":"d","x":"c","y":"b","z":"a",]
var str = "hello world"
var str1 : String = ""

for i in str.characters{
    var ch = "\(i)"
    // str1 += code[ch]!//without space
    if let eChar = code[ch] {          //for space
      str1 += eChar
    }
    else {
        str1 += ch
    }
    
   }

print("Encoded String of \(str) = \(str1)")

//Function
func display(){
    print("Function")
}
display()

//simple fun
//addition

func add(){
    var a1 = 10
    var b2 = 20
    var sum4 = 0
    sum4 = a1 + b2
    print("Addition = \(sum4)")
 }
 add()

//join string

func join() {
    var str3 = "Hello"
    var str4 = "Hi"
    var j = str3 + str4
    print("join string = \(j)")
 }
 join()

//Function with parameter
func add1(_ num4:Int, _ num5:Int) { //Internal Parameters
    var sum5 = num4 + num5
    print("Addition = \(sum5)")
    }
//var n1=10,n2=20
//add1(n1,n2) //another way
 add1(10,20)

//Factorial
func factorial(_ num8 : Int) {
    var fact = 1
    for i in 1...num8 {
     fact = fact * i
    }
        print("Factoarial of \(num8) Number  = \(fact)")
   
}
 factorial(7)

//Join String

func joinstring(_ str6 : String, _ str7 : String) {
    var joint = str6 + str7
    print("Joint String = \(joint)")
 }
 joinstring("Pradnya","abc")

//Area of rectangle
func area(_ b : Int, _ h : Int,_ r : Double,_ w:Int){
    var react = (1/2) * b * h
    var cir =  3.14 * r * r
    var tri =  h * w
    print("Area of Reactangle = \(react) Area of Circle = \(cir) Area of Triangle = \(tri)")
}
area(3,6,2,5)

//Even numbers from array
//var arr2 = [1,2,3,4,5]
func arrayofEven(_ arr2 : Array<Int>){
    for i in arr2 {
        if i%2==0 {
            print("Even Numbers = \(i)")
        }
    }
}
var arr2 = [1,2,3,4,5]
 arrayofEven(arr2)

//sum of all odd
func arrayofOdd(_ arr2 : [Int]){
    var sum9 = 0
    for i in arr2 {
        if i%2 != 0 {
             sum9 = sum9 + i
            }
        //print("Sum of odd Numbers = \(sum9)")
 }
    print("Sum of odd Numbers = \(sum9)")
}
arrayofOdd(arr2)

//func of reverse

func reversed() {
    for i in (20...40).reversed(){
        print("Reversed Number = \(i)")
    }
    
 // print("Reversed Number = \(i)")
}
reversed()*/

//function with parameter and return type

func addition(num1 : Int , num2 : Int) -> Int
 {
  var sum = num1 + num2
    return sum
}
var add = addition(num1 : 10, num2 : 20)
print("Additoin = \(add)")

/*//function with no parameter only return type
func subtarction() -> Int {
    var sub = num1
}*/

//function with joint string
func joinString(_ str6 : String, _ str7 : String) -> String{
    var join = str6 + str7
    return join
    }

var joint = joinString("Pradnya","abc")
print("JoinString = \(joint)")

//maximum of 3 numbers
func maxofThree(_ num3 : Int, _ num4 : Int, _ num5 : Int) -> Int{
    if(num3 > num4 && num3 > num5){
        return num3
    }else
        if (num4 > num3 && num4 > num5){
            return num4
        }
     else {
        return num5
    }
}

var max = maxofThree(10,40,20)
print("Maximum of 3 Numbers = \(max)")
if max%2 == 0{
    print("Maximiun Number \(max) is Even")
} else {
print("Maximum Number \(max) is Odd ")
 }

//factorial then sum of digit of number
func factorial(_ num6 : Int) -> Int {
    var f = 1
    for i in 1...num6 {
        f = f * i
        }
    return f
}

var fact = factorial(5)
print("Factorial of Number = \(fact)")
var sum2 = 0
while(fact > 0){
    var digit = fact % 10
    sum2 = sum2 + digit
    fact = fact/10
}
print("Sum of digit of number = \(sum2)")

//minimum and maximum

func  minofTwo(_ num7 : Int, _ num8 : Int) -> Int {
    if num7 < num8 {
        return num7
    }
    else {
        return num8
    }
}

var min = minofTwo(10,20)
print("Minimum of Two numbers = \(min)")

func  maxofTwo(_ num7 : Int, _ num8 : Int) -> Int {
    if num7 > num8 {
        return num7
    }
    else {
        return num8
    }
}

var max1 = maxofTwo(10,20)
print("Maximum of Two numbers = \(max1)")
print("Minimum to Maximum series = ")
for i in min...max1 {
  print(i)
}


//reverse
func reverse(_ num10 : Int) -> Int{
    var rev = 0
    var n =  num10
    while (n > 0) {
        var d = n % 10
        rev = rev * 10 + d
        n = n/10
    }
    return rev
}
 var r = reverse(145)
print("Reverse of Number = \(r)")

/*//reverse order 2ms
func reverseInterval(_ num11 : Int){
    for i in (1...num11).reversed() {
        print(i)
        sleep(2)
    }
    print("Go")
}

var c = reverseInterval(10)
print(c)

//internal external parameter
func merge(stringOne s1 : String, stringTwo s2 : String, withJoiner s3 : String){
    var m = s1 + s3 + s2 //inside function use internal Parametres
    print("Merge String = \(m)")
}
merge(stringOne: "hello", stringTwo: "Pradnya", withJoiner: " ")

//alphanumeric

func removeNumber(_ str10 : String) -> String{
    var str12 = str10
    let arr = ["0","1","2","3","4","5","6","7","8","9","#","*"]
    for i in arr {
    str12 = str12.replacingOccurrences(of: i , with: "")
    //print(s)
    }
    return str12
   //print(str12)
}
var string = removeNumber("a23v")
print("Numbers Remove From String = \(string)")*/

//parse
var result = 0
func parse(_ str11 : String) -> Int {
    //var str10 = str11
    var digits = "0123456789"
    for ch in digits.characters {
        let ch1 = "\(ch)"
        if str11 == ch1 {
      return result
    }
    result += 1
  }
    return -1
 }
var str = parse("5")
    print("String = \(str)")
                             /*//##Tuple##
var  t1 = (1,2.3,"hello")
print(t1.2)

var t3 = (val1: 10, val2: "hi")
print(t3.0)
print(t3.val2)

var t2 = (10,20)
if ((t2.0) > (t2.1)) {
    print("Maximum = \(t2.0)")
}else{
    print("Maximum = \(t2.1)")
}

//function in tuple
func operation(_ num13 : Int , _ num14 : Int) -> (Int,Int){
    let addition = num13 + num14
    let subtraction = num13 - num14
    return (addition,subtraction)
}
var result = operation(10,20)
print("Addition = \(result.0)")
print("Subtraction = \(result.1)")*/

/*//Maximum n minimum
var m = (num15 : 10, num16 : 30)
func operation1(minmax : (num15 : Int ,num16 : Int)) -> (Int,Int){
    var min : Int
    var max : Int
    if num15 > num16 {
     max = num15
    //return num15
    }
    else {
     min = num16
    
    }
    return(min,max)
}
var result1 = operation1(minmax : m)
print("Maximum = \(result1.0)")
print("Minimum = \(result1.1)")

/*//passed parameter to function
var t5  = (name : "Dhoni", score : 150)
func display(person : (name : String, score : Int)) -> (String,Int){ //Named Tuple
    return(person.name,person.score)
}

var d = display(person : t5)
print("name = \(d.0) and score = \(d.1)")
//print("Name = \(d.)")
//print("Name is \(t5.name) and score is \(t5.score)")


//display(person : (name : "Dhoni", score : 150))

//book price
var t6 = (book_id : 2, book_name : "swift", book_price : 1000)
func bookPrice(book : (book_id : Int, book_name : String, book_price : Int)) -> (Int , String , Int) {
    var b : Int
    if(book.book_price > 500) {
        
        var d1 = (book.book_price) / 100 * 10
         b = book.book_price - d1
        
        }else {
        
        b = book.book_price
    }
    
    return(book.book_id,book.book_name,b)
}

var b1 = bookPrice(book : t6)
print("Book id is \(b1.0) Book Name is \(b1.1) Book Price = \(b1.2)")*/*/

//Test

 /*//palindrome
var str = "madam"


//if str.characters.first == str.characters.last
    
/*for i in str.characters {
    var ch = (\i)
  if ((str.reversed()) == ch) {
    print("\(str)")
    }
    //ch += 1
else{
    print("not")
}
    
}*/

//ascending order
var arr = [5,4,6,2,1]
var narr = [Int]()
//print(arr)
narr = arr.sorted()
print(narr)
/*for i in arr.sorted() {
    let value = i
    print(value)
}*/*/


/*//Armstrong number between 1 to 1000
var temp1 : Int = 500

//var n = 0
//var temp : Int = 0
for num2 in 1...temp1 {
    //temp1 = num2
    var sum = 0
    var temp : Int = 0
    var rem1 : Int = 0
    temp = num2
    
    while temp != 0 {
        rem1 = temp % 10
        sum = sum + (rem1 * rem1 * rem1)
        temp = temp / 10
        }
    if( num2 == sum ){
        print("Number is armstrong = \(num2)")
}
}

    //sorted
    var arr = [1,5,87,4,6]
    print("Array Sorted = \(arr.sorted())")
    
    //array
    let one = ["1","3","5"]
    let two = ["a","b","c"]
    //var merged = [String]()
    let merged = zip(one, two).flatMap { [$0, $1] }

  print("Merged Array = \(merged)")

//Palindrome

var str = "madamg"
var str1 = str
var i = String(str1.characters.reversed())

print(i)
if (str == i) { // Comparing input string with the reverse string
    print("The string is a palindrome.\n");
}
else{
    print("The string isn't a palindrome.\n");
}*/

               //** Enumeration **

/*enum color {
    case red
    case blue
    case yellow
    case green
}
var c : color = .blue
switch c {
case .red :
    print("Color is Red")
case .blue :
    print("Color is Blue")
case .yellow :
    print("Color is Yellow")
case .green :
    print("Color is Green")

}

//seat prerference

enum seatPreference {
    case window
    case last
    case middle
    case Nopreference
}
var s : seatPreference = .middle
switch s {
case .window :
    print("SeatPreference is Window")
case .last :
    print("SeatPreference is last")
case .middle :
    print("SeatPreference is Middle")
case .Nopreference :
    print("SeatPreference is Not")
    
}

//season
enum season {
    case rainy
    case winter
    case summer
}
var season1 : season = .rainy

var temp : Range<Int>

switch season1 {
case .rainy :
      temp = 5..<20
case .winter :
    temp = 20..<30
case .summer :
    temp = 30..<37
}
print("Range of tempreature = \(temp) in \(season1)")
//switch s1 {
//case .rainy :
//    print("tempreature = 20c to 22^c")
//case .winter :
//    print("tempreature of range = 15 to 18")
//case .summer :
//    print("tempreature of range = 30 to 35")
//    
//}

//enum with raw value
enum coinType : Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25
}
var moneyArray : [(Int,coinType)] = [(8,.penny),(1,.quarter),(2,.nickel)]
var result = 0
for temp in moneyArray {
    
    result = result + (temp.0 * temp.1.rawValue)
    
    }
print("Total value of coins = \(result)")

                               //**Optionals**

var num : Int?
num = 20
if num != nil {
    print("Value of num = \(num!)") //
}
else {
    print("nil")
}


//function optional

func countryCode(_ country : String) -> String?{
    if country == "India" {
       return "INR"
    }
    else if country == "Australia"{
       return "AUD"
    }else if country == "USA"{
        return "USD"
    }
    else{
        return nil
 }
}
var code = countryCode("USA")
if code != nil {
    print("Code of Country = \(code!)")
}
else {
    print("Nil")
}

//Optional Binding // no need of ! for unwrapping

var str : String? = "Pradnya"

if let s = str {
    print(s)
}
else {
    print("Nil")
}

//Implicitly unwrapping //forcefully unwraaped not good solution

var num1 : Int! = 10
print(num1)

//appended string with "helloworld"

func appendString(_ str1 : String? ) -> String? {
    var string = str1
    if let s2 = string {
        var s3 = s2 + "HelloWorld"
        return s3
    }
   else{
    
    return nil
  }
 }
var append : String? = appendString("hi")
print(append!)

//tempreature

func currentTemp(_ temp : Int?) -> Int?{
    if temp != nil {
        return temp!
        //print("Current Tempreature of City = \(temp!)")
    }
    else {
        return nil
    }
}
var t = currentTemp(nil)
if t != nil {
    print("Current Temp = \(t!)")
}else {
    print("Nil")
}

//Associative Value in enum
enum Barcode{
    case UPCA(Int,Int,Int,Int)
    case QRCode(String)
}
var productBarcode : Barcode = .QRCode("HI")
switch productBarcode{
 case .UPCA(let v1,let v2,let v3,let v4) :
    print("Barcode = \(v1) \(v2) \(v3) \(v4)")
    
 case .QRCode(let s4) :
    print("String = \(s4)")
 }

//grade
enum Result {
    case Grade(gradeName : String)
    case Rank(rankName : Int)
}
var marks = 75

if marks == 75
{
    print("Grade = \(Result.Grade(gradeName: "A+")) and Rank = \(Result.Rank(rankName : 2))")
}*/*/
