import UIKit

var greeting = "Hello, playground"


let cloasedRange = 0...5

let halfOpenRange = 0..<5


while Int.random(in: 1...6) != 6 {
    print("not a six")
}

let const:Int = 5

let count = 10
var sum = 0
for i in 1...count {
    sum += i
}

let testCount = 100
var testSum = 0
for y in 1..<count{
    testSum += y
}

sum = 1
var lastSum = 0

for _ in 0..<count {
    let temp = sum
    sum = sum + lastSum
    lastSum = temp
}

sum = 0
for i in 1...count where i % 2 == 1 {
    sum += i
}

sum = 0

for row in 0..<8 {
    if row % 2 == 0 {
        continue
    }
    for column in 0..<8 {
        sum += row * column
    }
    
}
    
sum = 0
    
rowLoop: for row in 0..<8 {
columnLoop: for column in 0..<8 {
    if row == column {
        continue rowLoop
    }
    sum += row * column
    }
}


let range = 1...10
for i in range {
    let square = i * i
print("this is i = \(square)")
}

let testRange = 1...10
for i in testRange {
    
    var m = i * i
    print("\(m)")
}

for i in range {
    
    let square = sqrt(Double(i))
    print("\(square)")
}

for z in range {
    
   var square = sqrt(Double (z))
    print("\(square)")
}

/*
sum = 0
for row in 0..<8 where row % 2 == 1
                      {
    for column in 0..<8  {
        sum += row * column
    }
}
*/


sum = 0
for row in 0..<8 where row % 2 == 1{
    for column in 0..<8 {
        sum = sum + row * column
    }
}

let number = 10

switch number {
case 0:
    print("zero")
default:
    print("non - zero")
}

switch number {
case 10:
    print("its ten")
default:
    break
}

let string = "Dog"

switch string {
case "Cat", "Dog":
    print("animal is a house pet")
default:
print ("animal is not a house pet")
}

let hourOfDay = 12
var timeOfDay = ""

/* switch hourOfDay {
case 0, 1, 2, 3, 4, 5:
    timeOfDay = "Early Morning"
case 6, 7, 8, 9, 10, 11:
    timeOfDay = "Morning"
case 12, 13, 14, 15, 16:
    timeOfDay = " Afternoon"
case 17, 18, 19:
    timeOfDay = "Evening"
case 20, 21, 22, 23:
    timeOfDay = "Late Evening"
default:
    timeOfDay = "IVALID HOUR"
}
print(timeOfDay) */


switch hourOfDay {
case 0...5:
    timeOfDay = "Early Morning"
case 6...11:
    timeOfDay = "Morning"
case 12...16:
    timeOfDay = " Afternoon"
case 17...19:
    timeOfDay = "Evening"
case 20...23:
    timeOfDay = "Late Evening"
default:
    timeOfDay = "IVALID HOUR"
}
print(timeOfDay)


switch number {
case _ where number % 2 == 0:
    print("even \(number)")
default:
    print("odd")
}
//
/* let coordinates = (x: 3, y: 2, z: 5)

switch coordinates {
case (0, 0, 0): //1
    print("Origin")
case (_, 0,0): //2
    print ("On the x-axis")
case (0, _, 0): //3
    print("On the y-axis")
case (0, 0, _): //4
    print("On the z-axis")
default:
    print("Somewhere in space")
}

switch coordinates {
case let (x, y, _) where y == x:
    print("Along the y = x line")
case let (x, y, _) where y == x * x:
    print("Along the x^2 line")
default:
    break
}
*/

/* let age: Int = 30
var stageOfLife = ""
switch age {
case 0...2:
    print("Infant")
case 3...12:
    print("child")
case 13...19:
    print("teenager")
case 20...39:
    print("Adult")
case 40...60:
    print("middle aged")
default:
    print("Elderly")
} */
//

let testTuple = (30, "Serj")

let age: Int = 30
var stageOfLife = ""
switch age {
case 0...2:
    print("\(testTuple.1) is a Infant")
case 3...12:
    print("\(testTuple.1) is a  child")
case 13...19:
    print("\(testTuple.1) is a  teenager")
case 20...39:
    print("\(testTuple.1) is a  Adult")
case 40...60:
    print("\(testTuple.1) is a  middle aged")
case _ where age >= 60:
    print("\(testTuple.1) is a Eldery")
default:
    print("INVALID AGE")
}

//

var sum0 = 0
for i in 0...5 {
    sum0 += i
}

var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}



let coordinates = (3, 2, 5)

switch coordinates {
    case let (x, y, z) where x == y && y == z:   print("x = y = z")
    case (_, _, 0):   print("On the x/y plane")
    case (_, 0, _):   print("On the x/z plane")
    case (0, _, _):   print("On the y/z plane")
    default:   print("Nothing special") }

for i in 0...10 {
print(i-1)
}

var value: Double = 0.0
for _ in 0..<10 {
    print(value)
    value += 0.1
}

for counter in 0...10 {
    print(Double(counter) * 0.1)
    
}
