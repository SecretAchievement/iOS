import UIKit

var greeting = "Hello, playground"

//Hello Chapter 5!!

func printMyName () {
    print("My name is Serj!")
}
printMyName()
//
func printMultipleOfFive (value: Int) {
    print("\(value) * 5 = \(value * 5)")
}
printMultipleOfFive(value: 10)
//
func printMultipleOf (multiplier: Int, andValue: Int) {
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(multiplier: 4, andValue: 2)
//
func printMultipleOf(multiplier: Int, and value: Int) {
    print ("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOf(multiplier: 4, and: 2)
//

func printMultipleOfTest(_ multiplier: Int, and value: Int) {
    print ("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOfTest(1232, and: 77)
//

func printMultipleOfTest1(_ multiplier: Int, _ value: Int) {
    print ("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOfTest1(1232, 77)

func printMultipleOfTest2(_ multiplier: Int, _ value: Int = 1) {
    print ("\(multiplier) * \(value) = \(multiplier * value)")
}
printMultipleOfTest2(5)
//

func multiply (_ number: Int, by multiplier: Int) -> Int {
    return number * multiplier
}
let result = multiply(4, by: 2)
let resultAgain = multiply(33, by: 9)
//

func multiplyAndDivide (_ number: Int, by factor: Int) -> (product: Int, quotient: Int) {
     (number * factor, number / factor)
}
let results = multiplyAndDivide(4, by: 2)
let product = results.product
let quotient = results.quotient
//
func multiplyTest (_ number: Int, by multiplier: Int) -> Int {
    number * multiplier
}
let resultTest = multiplyTest(22, by: 424)
//
/* func incrementAndPrint (_ value: Int) {
    value += 1
    print(value)
} */

func incrementAndPrint (_ value: inout Int) {
    value += 1
    print(value)
}
//
var value = 5
incrementAndPrint(&value)
print(value)
//
func getValue() -> Int {
    31
}
func getValue() -> String {
    "Serj"
}
//

let valueInt: Int = getValue()
let valueString: String = getValue()
//
//Mini exercises

func printFullName (firstName myName: String, lastName myLastName: String) {
    print(myName + "" + myLastName)
}
printFullName(firstName: "Serj", lastName: "Haben")

func printFullName (_ myName: String, lastName: String) {
    print(myName + " " + lastName)
}
printFullName("Serj", lastName: "Haben")
//3
func calculateFullName (_ firstName: String, _ lastName: String) -> String {
    firstName + " " + lastName
}
let finalName = calculateFullName("Serj", "Haben")

//4

func calcaulateFullNameFinale (_ firstName: String, _ lastName: String) -> String {
    firstName + " " + lastName + " is " + "\(firstName.count + lastName.count)" + " lettes"
}
let superName = calcaulateFullNameFinale("Serj", "Haben")

func calculateFullFinale1 (_ firstName: String, _ lastName: String) -> (name: String, length: Int) {
    let fullName = firstName + " " + lastName
    return (fullName, fullName.count)
}
let fullNameLength = calculateFullFinale1("Serj", "Haben")
//Functions as variables

func add (_ a: Int, _ b: Int) -> Int {
    return a + b
}
var function = add
function(4,2)
//
func printResult(_ function: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    let result = function(a, b)
    print(result)
}
printResult(add, 4, 2)

//func noReturn() -> Never {
//}
func infiniteLoop() -> Never {
    while true{
    }
}
//

/// wow
/// - Parameters:
///   - a: a
///   - b: b
///   - c: c
/// - Returns: lol
func averageDouble (for a: Double, and b: Double, and c: Double) -> Double {
    let total = a + b + c
    let average = total / 3
    return average
}
var result1: Double = averageDouble(for: 23, and: 324, and: 4234)
averageDouble(for: 32423, and: 432423, and: 2424.2)
//
//1
for index in stride (from: 10, through: 9, by: -0.1) {
    print(index)
}
//2
func isNumberDivisible (_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}

func isPrime(_ number: Int) -> Bool {
    if number < 0 {
        return false
    }
    if number <= 3 {
        return true
    }
    
    let doubleNumber = Double(number)
    let root = Int(doubleNumber.squareRoot())
    for divisor in 2...root{
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    return true
}

isPrime(6)
isPrime(13)
isPrime(8893)

//3
/* func fibonacci(_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 || number == 2{
        return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}

fibonacci(1)  // = 1
fibonacci(2)  // = 1 
fibonacci(3)  // = 2
fibonacci(4)  // = 3
fibonacci(5)  // = 5
fibonacci(10) // = 55 */

func fibonacci (_ number: Int) -> Int {
    if number <= 0 {
        return 0
    }
    if number == 1 || number == 2 {
     return 1
    }
    return fibonacci(number - 1) + fibonacci(number - 2)
}
fibonacci(11)


///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
///
//for i in stride(from: 10, through: 22, by: 4) {
  //  print(i)
//}
//1
for i in stride(from: 10.0, to: 9.0, by: -0.1) {
    print(i)
}
//2

func isNumberDivisibleMy(_ number: Int, by divisor: Int) -> Bool {
    number % divisor == 0
}
isNumberDivisible(45, by: 7)

func isPrimeMy(_ number: Int) -> Bool {
    if number <= 0 {
        return false
    }
    if number <= 3 {
        return true
    }
    
    let doubleNumber = Double(number)
    let root = Int(doubleNumber.squareRoot())
    for divisor in 2...root {
        if isNumberDivisible(number, by: divisor) {
            return false
        }
    }
    return true
}
isPrime(6)
isPrime(13)
isPrime(8893)

