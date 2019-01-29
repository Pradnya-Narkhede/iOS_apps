
import Foundation
//object create of subclass 

var s = sub()
s.show()
s.displayOne()

var c = circle(cX: 1, cY: 0, radius: 20)

c.display()

//person
var m = manager(n: "Pradnya", a: 23, quali: "MSc(Comp.sci)", id: 1, sal: 35000, department:      "Computer")
m.display()

//person1
//var s1 = student1(n : "Sneha",g : "Female",a : 30,rollno : 2,institutename : "ios")
//var s1 = student1()
//  s1.getc()
var e = employee1()
e.getc()
var s1 = student1()
s1.getc()

//
var library = [Movie(name : "Bhoot",director : "abc"),Song(name :"lal dupatta",artist : "Kp.Aryan"),Movie(name : "Ghj",director : "wer")]

var mcount = 0
var scount = 0

for item in library {
    if item is Movie {
        mcount += 1
    }else if item is Song{
        scount += 1
    }
}
print("Movie : \(mcount) Song : \(scount)")

for item in library{
    if item is Movie{
        let m = item as! Movie
        print("\(m.name) \(m.director)")
        }
    if item is Song{
        let s = item as! Song
        print("\(s.name) \(s.artist)")
    }
}


//

