import UIKit

var greeting = "Hello, playground"

var testString = "String"
var string2: String = "String2"
var a = ""
var b = String("lol")
a = "Hello"
b = "World"
print(a + " " + b)

var number = 10
print("number is = \(number)")

var char: Character = "="

let testJey = b + String(char)
print(testJey)
string2.append("Wow")
print(string2)

for p in "Hello Max" {
    print(p)
}

let d = a + b
print(d)

print(a += b)

var variableString = "Hello"
variableString.count
if variableString.isEmpty {
    print("is Empty")
} else {
    print("no empty")
}

variableString.hasPrefix("M")
variableString.hasSuffix("o")
//homework

var myString = "wow string"
var myString2 = "superString"
var charTest: Character = "t"
let testString3 = myString2 + " " + String(charTest)

for c in testString3 {
    print(c)
}
for c in testString3 {
    print("wow \(c)")
}
for c in 1...543353 {
    print("Current number + 5 is \(c + 5)")
}
