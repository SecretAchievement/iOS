import UIKit
import Foundation
var greeting = "Hello, playground"


let typeInferredInt = 42


let actuallyDouble = 3 as Double


//exercise types

let age1 = 42
let age2 = 21

let avg1  = ((Double (age1) + Double (age2)) / 2)


var message = "Hello" + " my name is "
let name = "Matt"
message += name
message = "Hello my name is \(name)!" // "Hello my name is Matt!

let oneThird = 1.0 / 3.0 
let oneThirdLongString = "One third is \(oneThird) as a decimal."

let bigString = """
You can have a string
   that contains multiple
 lines   by   doing this
"""

print(bigString)


let firstName: String = "Serj"
let lastName: String = "Kup"
print(firstName + lastName)


let fullName = firstName + " " + lastName
let myDetails = "Hello, my name is \(fullName)"

let coordinates: (Int, Int) = (2, 3)


let x1 = coordinates.0 
let y1 = coordinates.1




let coordinates3D = (x: 2, y: 3, z: 1)
let x3 = coordinates3D.x
let y3 = coordinates3D.y
let z3 = coordinates3D.z


let (x4, y4, _) = coordinates3D

//var tuple = (month: 4, day: 20, year: 2024, temperature: 12.6)
//let (_, day, _, averageTemperature) = tuple
//tuple.temperature = 15.6


//Challenges

let coordinatesTest = (2, 3)
let namedCoordinates = (row: 2, column: 3)


var character: Character = "D"
 character = "t"
var string: String = "Dog"
 string = "cat"


let tuple = (day: 15, month: 8, year: 2015)
let day = tuple.day

var testName   = "Matt"
testName += " Galloway"





let tuple0 = (100, 1.5, 10)
let value = tuple0.1

let tuple1 = (day: 15, month: 8, year: 2015)
let month = tuple1.month


let number = 10
let multiplier = 5
let summary = "\(number) multyplied by \(multiplier) equals \(number * multiplier)"


let a = 4
let b: Int32 = 100
let c: UInt8 = 12

let sum = a + Int(b) - Int(c)

var testDouble: Double = 6.87887
var testFloat: Float = 5555.234353

//print(testFloat.pi)
let difference = Double.pi - Double(Float.pi)

































