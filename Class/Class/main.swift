//
//  main.swift
//  Class
//
//  Created by Mac on 28/11/18.
//  Copyright © 2018 pradnya. All rights reserved.
//

import Foundation
                                     //**Class**//

/*class Person {
    
    var name : String = ""
    var age : Int = 0
 
    func getData(n : String,a : Int){
        name = n
        age = a
    }
    func profile() -> String {
        return "I am \(name) and I am \(age) years old"
    }
    
}

var p = Person()
p.name = "Pradnya"
p.age = 23
print(p.profile())
p.getData(n: "Sneha", a: 30)
print(p.profile())*/


//Employee

/*class Employee {
    var name : String = ""
    var salary : Int = 0
    var department : String = ""
    var id : Int = 0
    var designation : String = ""
    
    func setEmpData(n : String,s : Int,d : String,i : Int,ds : String){
        name = n
        salary = s
        department = d
        id = i
        designation = ds
        
    }
    
    func displayEmpData() -> (String,Int,String,String) {
         //return "Employee name = \(name) and Salary = \(designation)"
            return (name,salary,department,designation)
    }
}
var e = Employee()
var e1 = Employee()
var e2 = Employee()
e.setEmpData(n: "Pradnya", s: 30000, d: "Computer", i: 1, ds: "Manager")
e1.setEmpData(n: "Sneha", s: 35000, d: "Computer", i: 2, ds: "HR")
e2.setEmpData(n: "Rishi" , s : 25000, d: "IT" , i : 3, ds : "Fresher")

 var t = e.displayEmpData()
print("Emp Name = \(t.0) Employee Salary = \(t.1)")
print(e1.displayEmpData())
print(e2.displayEmpData())

//Product
class Product {
    var pname = ""
    var qprice = 0
    
    func setProduct(p : String, q : Int){
        pname = p
        qprice = q
    }
    func diplayProduct() -> (String,Int){
        return (pname,qprice)
    }
}
var p = Product()
p.setProduct(p: "Washing Machine", q: 15000)
var p1 = p.diplayProduct()
print("Product name = \(p1.0) and Quantity Price = \(p1.1)")*/


/*//Class
class Triangle{
    var base =  0
    var height = 0
    var area = 0
    func setTriData(b : Int,h : Int){
        base = b
        height = h
    }
    func calculateArea()  {
        area = (base * height)/2
    }
    func displayTriData() -> String{
        return "Area of Triangle = \(area)"
    }
}
var t = Triangle()
t.setTriData(b: 7, h: 6)
t.calculateArea()
print(t.displayTriData())

//arithmatic
class Arithmatic {
    var num1 = 0
    var num2 = 0
    var add = 0
    var sub = 0
    var mul = 0
    var div = 0
    func setData(n : Int,n1 : Int){
        num1 = n
        num2 = n1
    }
    func Operation()  {
        add = num1 + num2
        sub = num1 - num2
        mul = num1 * num2
        
        div = num1 / num2
    }
    func displayData() -> String {
        return " Addition = \(add) \n Subtraction = \(sub) \n Multiplication = \(mul) \n Division =  \(div)"
    }
}
var a1 = Arithmatic()
a1.setData(n: 3, n1: 4)
a1.Operation()
print(a1.displayData())

//Book

class Book{
    var bname = ""
    var aname = ""
    var bprice = 0
    var yofpub = 0
    var d = 0
    var p = 0
    func setBookData(b : String,a : String,bp : Int,yp : Int){
        bname = b
        aname = a
        bprice = bp
        yofpub = yp
    }
    func calculatePrice() {
        
        if bprice > 500 {
            d = bprice / 100 * 5
            p = bprice - d
            //return p
            
        }else if bprice > 100{
            d = bprice / 100 * 10
            p = bprice - d
            
        } else {
    
            p = bprice
        }
     
    }
    func displayBookData() -> String{
        return " Book Name = \(bname) \n Author Name = \(aname) \n Book Price = \(bprice) \n With Discount Book Price = \(p) "
    }
    
}
var b1 = Book()
b1.setBookData(b : "Let Us C",a : "Yashwant Kanetkar",bp : 1600,yp : 2015 )
b1.calculatePrice()
print(b1.displayBookData())*/

/*//init
class Person {
    var name : String
    var age : Int
    init(){          //default init
        name = "abc"
        age = 20
    }
    init(name : String,age :Int){
        self.name = name
        self.age = age
    }
    func profile() -> String{
        return "Name = \(name) Age = \(age)"
    }
}
var per = Person()
print(per.profile())
var per1 = Person(name : "Pradnya",age : 24)
print(per1.profile())

class Student{
    var name : String = ""
    var roll_no : Int = 0
    var batch_id : Int
    var clgname : String = ""
    
    init(){
        batch_id = 100
    }
    func setStudData(n : String, r : Int,cn : String){
        name = n
        roll_no = r
        clgname = cn
    }
    func displayStudData() -> String{
        return "Student Name = \(name) and Roll No. = \(roll_no) and batch_id = \(batch_id) and college name is \(clgname)"
    }
    
}
var s = Student()
var s1 = Student()
var s2 = Student()

s.setStudData(n: "Pradnya", r: 2, cn: "Prof.Ramkrishna More")
s1.setStudData(n: "Anjali", r: 4, cn: "Fergusson")
s2.setStudData(n: "Aparna", r: 6, cn: "Modern")
print(s.displayStudData())
print(s1.displayStudData())
print(s2.displayStudData())


//Person

class Person1 {
    var name : String
    var age : Int
    var email : String
    init(){
        name = "NA"
        age = 0
        email = "NA"
    }
    init(name : String,age : Int,email : String){
        self.name = name
        self.age = age
        self.email = email
    }
    func displayPerData() -> String {
        return "Person Name = \(name) Age = \(age) Email = \(email)"
    }
}
var p2 = Person1()
print(p2.displayPerData())
var p3 = Person1(name: "Pradnya", age: 4, email: "pradnya214@gmail.com")
print(p3.displayPerData())*/



                                //**Properties**//

/*class Operation{
    var num1 = 10
    var num2 = 20 //Stored Property
    var result : Int {  //Compute Property
       return num1 + num2 //Readonly
    }
}
var o = Operation()
print(o.result)

//Using get set

class Operation1{
    var num1 = 10
    var num2 = 20 //Stored Property
    var result : Int {  //Compute Property it is computed on runtime
        get {
        return num1 + num2 //Readonly
      }
        set {
            num1 = newValue + num2 //WriteOnly
        }
 }
}
var a = Operation1()
a.result = 30
print(a.result)

//Greater among 2

class Greater {
    var num1 = 80
    var num2 = 40
    var Maximum : Int {
        if num1 > num2 {
            return num1
        } else {
        return num2
        }
    }
}
var g = Greater()
print("Greater Number is \(g.Maximum)")

//Random Number 

class Random {
    var num1 = Int(arc4random())
    var evod : String {
        
            if num1%2 == 0 {
                return "\(num1) is Even"
            } else {
                return "\(num1) is odd"
            }
    }
}
var r = Random()
 print(r.evod)

//Lazy Stored Property
func getAge() -> Int{
    return 30
}
class Person{
    var fname = "Pradnya"
    var lname = "Narkhede"
    func profile() -> String{
        return fname + lname
    }
    lazy var age = getAge()
}
var p = Person()
print(p.profile())
print(p.age)

//Random number in lazy

func getRandom() -> Int {
    return Int(arc4random())
}
class Random1{
    //var num = Int(arc4random())
    //func profile() -> Int{
        //return num
    
    lazy var rand = getRandom()
}
var r1 = Random1()
print("Random Number = \(r1.rand)")
var r2 = r1.rand + 2
print("Random Number incremented by 2 = \(r2)")

                                    //**Closure**//

//Simple Function
func display(){
    print("Dispaly Function")

}
display()
//Function with Parameter No Return Values
func addition(num1 : Int,num2 : Int){
    let sum = num1 + num2
    print(sum)
}
addition(num1: 10, num2: 20)

//Simple Closure
var cl = {                   //closure
 print("Closure")
}
cl()

//Closure with Parameter No Return values
var clwithPara = {
    (num1 : Int,num2 : Int) -> Void in
    let sum1 = num1 + num2
    print("sum = \(sum1)")
}
clwithPara(40,60)

//Function with Parameter and Return value
func add(num1 : Int,num2 : Int)-> Int {
    let sum = num1 + num2
    return sum
}
var a1 = add(num1: 40, num2: 20)
print(a1)

//Closure with Parameter and Return value
var clr = {
    (num1 : Int,num2 : Int) -> Int in
    return num1 + num2
}
var sum = clr(20,6)
print(sum)

//Even odd

var clevod = {
    (num1 : Int) -> Void in
    if num1%2 == 0 {
        print("Number is Even")
    }else {
        print("Number is Odd")
    }
}
clevod(25)

//Return integer and squre

var clsq = {
    (num1 : Int) -> (Int,Int) in
        var num2 = num1 * num1
        return (num1,num2)
        
    
    }
print("Number And it's Square is \(clsq(2))")

//merge string

var clmerge = {
    (str1 : String,str2 : String) -> String in
    return str1 + str2
}
var m = clmerge("pradnya","ABC")
print("Merge of String is \(m)")

//sum of digit of odd elements from array

var clarray = {
    (arr : [Int]) -> Int in
    var sum = 0
    for i in arr {
        if i%2 != 0 {
            sum = sum + i
            }
        
    }
    return sum
}

var arr1 = clarray([13,25,38,48,50])

print("Addtion of Old Elements From array is \(arr1)")
var sum1 = 0
var d : Int
while arr1 > 0 {
   d = arr1 % 10
   sum1 = sum1 + d
   arr1 = arr1 / 10
}
print("Sum of Digits of odd elements array is \(sum1)")

//closure in function pass

var c1 = {
    print("Pradnya")
}
func display(clr  : () -> Void){
    for _ in 1...5 {  //if it's not used then _ is used
        clr()
    }
}
display(clr: c1)

var add1 = {
    (num1 : Int,num2 : Int) -> Void in
    let sum = num1 + num2
    print("Addition is \(sum)")
}

var add2 = {
    (num1 : Int,num2 : Int) -> Int in
    let sum = num1 + num2
    return sum
    //print("Addition is \(sum)")
}


func addition(clr : (_ : Int,_ : Int)-> Void){
  let n1 = 20
  let n2 = 40
  clr(n1,n2)
}
addition(clr: add1)

func sum(clr : (_ : Int, _ : Int)->Int){
    let n1 = 20
    let n2 = 4
    let s = clr(n1,n2)
    print(s)
}
sum(clr : add2)

//square even odd

var square = {
    (num1 : Int) -> Int in
    var sq = num1 * num1
    return sq
}

func evod(clr : (_ : Int) -> Int) -> String {
   let n = 2
    var s1 = clr(n)
  if s1 % 2 == 0 {
        return "even"
    }else {
        return "odd"
    }
}
var e = evod(clr: square)
print(e)

//appended with hello world

var append = {
    (str : String) -> String in
    var str : String = ""
    let merge = str + "HelloWorld"
    return merge
    
}

func appended(clr : (_ : String) -> String) -> String {
    let str1 = "hi"
    let s = clr(str1)
    //let merge = s + "HelloWorld"
    return("merge String is \(s)")
 }
var e1 = appended(clr : append)
print(e1)

//min max

var clminmax = {
    (num1 : Int,num2 : Int) -> (Int,Int) in
    if num1 > num2 {
       return (num1,num2)
    }
    else {
       return (num2,num1)
    }
    
}
func minmax(clr : (_ : Int, _ : Int) -> (Int,Int)) {
    let n1 = 10
    let n2 = 30
    let r = clr(n1,n2)
    
    for i in r.1...r.0 {
        print(i)
    }
}
minmax(clr : clminmax)

//table

var table = {
    (num1 : Int) -> Void in
    //var t = num1 * (1...10)
    var t = 0
    for i in 1...10 {
          t = num1 * i
    
        print("\(t)")}
}

func Table(clr : (_ : Int) -> Void){
    let n = 2
    let s4 = clr(n)
    print("Table = \(s4)")
}
 Table(clr: table)


                                //**Structure**//

 class Employee1{
    var empId : Int = 0
    var empSal : Float = 0.0
    
    func display(){
        print("Employee id is \(empId) and Salary = \(empSal)")
    }
    }
    func CalculateSal(emp : Employee1){
    
        emp.empSal += 1000.0
    }
    var e8 = Employee1()
    e8.empSal = 5000.0
    CalculateSal(emp: e8)
    e8.display()
    
    struct Employee {
    var empId : Int = 0
    var empSal : Float = 0.0
    
    func display(){
        print("Employee id is \(empId) and Salary = \(empSal)")
    }
  }
func CalculateSal(emp : Employee){
    var e1 = emp
    e1.empSal += 1000.0
 }
var e9 = Employee()
e9.empSal = 5000.0
CalculateSal(emp: e8)
e9.display()

//**Operator

var dateA
*/*/

                                  //**Generics**

/*func display<T>(arr : [T]){
    for i in arr{
        print(i)
    }
}
var intArray = [1,2,3,4,5]
var stringArray = ["hi","Hello","Pradnya"]
display(arr : intArray)
display(arr : stringArray)


//Swap 2 integers floats strings

func swap<T>(_ num1 : inout T,_ num2 : inout T){
    
    var temp : T
        temp = num1
        num1 = num2
        num2 = temp
    
}
var n1 = 10 , n2 = 20
swap(&n1,&n2)
print("After Swapping")
print(n1,n2)

//Class on generics

class stack <T> {
    var elementArray = [T]()
    func push(element : T)
    {
        elementArray.append(element)
    }
    func pop() -> T {
        return elementArray.removeLast()
    }
    func display() {
        for i in elementArray {
            print(i)
        }
    }
}

var s1 = stack<Int>()
print("Push Elements")
s1.push(element: 1)
s1.push(element: 2)
s1.push(element: 3)
s1.push(element: 4)
s1.display()
print("Pop of Element")
s1.pop()
s1.display()

var s2 = stack<String>()
print("Push Elements")
s2.push(element: "c")
s2.push(element: "c++")
s2.push(element: "Java")
s2.display()
print("Pop String")
s2.pop()
s2.display()*/


                                 //**Type Levels**//

class BankAccount {
    var bankName : String = ""
    static var ineterestRate : Int = 10
    
    class var num : Int {
        return 20
    }
    func display(){
        print("Bank Name id \(bankName) and Interest Rate is \(BankAccount.ineterestRate)")
    }
    static func show(){ //we Can't print bankname because its not static or class
        print("Interest Rate is \(ineterestRate)")
        print("Bank Name is \(num)")
    }
    class func show1(){ //we Can't print bankname because its not static or class
        print("Interest Rate is \(ineterestRate)")
        print("Bank Name is \(num)")
    }

    
}
var b1 = BankAccount()
b1.bankName = "HDFC"
b1.display()
var b2 = BankAccount()
BankAccount.show()
BankAccount.show1()

//Student Class

class Student {
  var sname = ""
  static var batchid = 10
  var roll_no = 0
  var sub1 = 0
  var sub2 = 0
    var sub3 = 0
    var sub4 = 0
    var sub5 = 0
    var per : Int = 0
  static var collname = "Fergusson"
    func setter(sn : String,r : Int,m1 : Int,m2 : Int,m3 : Int,m4 : Int, m5 : Int){
        sname = sn
        roll_no = r
        sub1 = m1
        sub2 = m2
        sub3 = m3
        sub4 = m4
        sub5 = m5
    }
    func CalculatePer() {
        
        let add = sub1 + sub2 + sub3 + sub4 + sub5
        per = add / 500 * 100
    }
    func getter() -> String{
        return "Student Name is \(sname) \n Batch id = \(Student.batchid) \n Roll No. = \(roll_no) \n Percentage = \(per) \n Colledge Name = \(Student.collname)"
    }
 
}

var s = Student()
s.setter(sn: "Pradnya", r: 1, m1: 40, m2: 50, m3: 60, m4: 40, m5: 40)
s.CalculatePer()
print(s.getter())
var s1 = Student()
s1.setter(sn: "Sneha", r: 2, m1: 40, m2: 50, m3: 60, m4: 46, m5: 40)
s1.CalculatePer()
print(s1.getter())
var s2 = Student()
s2.setter(sn: "Anjali", r: 3, m1: 40, m2: 50, m3: 68, m4: 40, m5: 40)
s2.CalculatePer()
print(s.getter())
var s3 = Student()
s3.setter(sn: "Praful", r: 4, m1: 40, m2: 55, m3: 60, m4: 40, m5: 40)
s3.CalculatePer()
print(s3.getter())
var s4 = Student()
s4.setter(sn: "Pradnya", r: 5, m1: 46, m2: 50, m3: 60, m4: 40, m5: 40)
s4.CalculatePer()
print(s4.getter())


                        //**Extension**//

extension String {
    
    func replaceWord(str1 : String,str2 : String)->String{
        return replacingOccurrences(of: "tc", with: "Tc")
    }
    
    static func merge(str1 : String,str2 :String)->String{
        return str1 + " " + str2
    }
    
    mutating func removeNumbers(){
        let arr = ["0","1","2","3","4","5","6","7","8","9"]
        for i in arr{
            self = self.replacingOccurrences(of: i, with: "")
        }
    }
}

var e = "Bitcode"
var res = e.replaceWord(str1: "tc", str2: "TC")
print(res)

var result = String.merge(str1: "Hello", str2: "Bitcode")
print(result)

var e1 = "a34c45d"
e1.removeNumbers()
print(e1)

                                                      //**Error Handling**//

enum Errors : Error {   //Error is predefined protocol in here
    case divideByZero
}
class Sample {
    var num1 = 10
    var num2 = 0
 
    func test()throws -> Void{
        if num2 == 0 {
            throw Errors.divideByZero
        }
        else{
            let result = num1/num2
            print("Division is \(result)")
        }
    }
}
var s8 = Sample()
do {
    try s8.test()
}
catch let e{
    print("Division not Possible")
}

//Handling For Negative Number

enum Errors1 : Error {   //Error is predefined protocol in here
    case divideByZero
    case negativeNumber
}
class Sample1 {
    var num1 = -10
    var num2 = 8
    
    func test()throws -> Void{
        if num2 == 0 {
            throw Errors1.divideByZero
        }
        else
        if num2 < 0 {
            throw Errors1.negativeNumber
         }
        else{
            let result = num1/num2
            print("Division is \(result)")
        }
    }
}
var s9 = Sample()
do {
    try s9.test()
}
catch let e{
    print(e)
}

                                                     //**Transaction Error**//

enum Transaction : Error {
    case inactiveError
    case withdrawlError
}
class BankAccount1 {
    var account : Bool = true
    var amount = 3000
    var TotalAmount = 5000
    
    func check()throws -> Void{
        if account == false {
            throw Transaction.inactiveError
        }
        else
            if amount >  5000 {
                throw Transaction.withdrawlError
            }
            else{
                var ramount = TotalAmount - amount
                print("Account is active and Account Balance is \(ramount)")
        }
    }

}
var b = BankAccount1()
do {
    try b.check()
}
catch let e{
    print(e)
}

