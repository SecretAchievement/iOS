import UIKit

var greeting = "Hello, playground"
var variable = 10
let const = 22

var a1: Int = 10
var a2 : Double = 2.5555
var a3: Float = 2.545454545
var a4 = 55
var c = a1 + Int(a2)
let i = 5 + 5.555

typealias myNumber = Int
var number: myNumber = 12

print(number)
print("hello")

var boolVariable: Bool = false

var o = 111_123_654

if boolVariable == true {
    print("Hello")
} else {
    print("Bye")
}
//homework

typealias myTypeLikeString = String
let testString: myTypeLikeString = "testString"
print(testString)
typealias myTypeLikeDouble = Double
let myDoubleTest: myTypeLikeDouble = 4.23244
print(myDoubleTest)
//
let oneMoreFloat = 5.24343
let oneMoreInt = 7
let oneMoreString = "555.222"
let f = Int(oneMoreFloat) + oneMoreInt
print(f)


let integerNumber = 55334
let doubleNumber = 4343.999992392983823

var justNumber = Double(integerNumber) + doubleNumber
print(justNumber)

var multipleNumber = Double(integerNumber) * doubleNumber
print(multipleNumber)
