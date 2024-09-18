import UIKit

var greeting = "Hello, playground"

let constArray: [String] = ["a", "b", "c", "d"]
constArray.count

var mutableArray = [String](["z"])

if mutableArray.count == 0 {
    print("array is empty")
} else   {
    print("array is not empty")
}

if mutableArray.isEmpty {
    print("array is empty")
}
mutableArray += constArray
mutableArray += ["element"]

mutableArray.append("mother")
print(mutableArray)

mutableArray[5]
mutableArray[1..<4]
mutableArray.insert("-", at: 3)
mutableArray.remove(at: 3)
mutableArray
mutableArray.removeLast()

//homework


var dollarArray: [Int] = [1, 5, 10, 20, 50, 100]
var m: Int = 0

for z in dollarArray {
    print(z)
    m += z
    print("Sum in array is \(m)")
    //print("Sum is \(m + z)")
    //print("Sum in array is /(m + z)")
}
//

var arrayDaysOfMonth: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
for i in arrayDaysOfMonth {
    print("Hey it is a \(i)")
}
var arrayMonth: [String] = ["January", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"]
for z in 0..<arrayMonth.count {
    print("lol \(z)")
    print("\(arrayMonth[z]) has a \(arrayDaysOfMonth[z]) days" )
}
//- сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
var tupleMassive = (arrayDaysOfMonth, arrayMonth)
print(tupleMassive)
var tupleMassiveTest: [(String, Int)] = [("jan", 31), ("feb", 28), ("mar", 31), ("Apr", 30), ("May", 31), ("Jun", 30), ("Jul", 31), ("Aug", 30), ("Sep", 31), ("Oct", 31), ("Nov", 30), ("Dec", 31)]
print(tupleMassiveTest)
for z in 0..<tupleMassiveTest.count {
    print("In \(tupleMassiveTest[z].0) month is \(tupleMassiveTest[z].1) days")
}

for i in (0..<tupleMassiveTest.count).reversed() {
    print("In \(tupleMassiveTest[i].0) month is \(tupleMassiveTest[i].1) days")
}
////////////////////
var numberOfDays = 0
var indexOfMonth = 0
var date = (monthOfDate: "Mar", dayOfDate: 16)

for (index, value) in arrayMonth.enumerated() {
    if date.monthOfDate == value {
        indexOfMonth = index
        print("Wow is \(indexOfMonth)")
    }
}
for i in 0...(indexOfMonth - 1) {
    numberOfDays += arrayDaysOfMonth[i]
    print(numberOfDays)
}

numberOfDays += (date.dayOfDate - 1)
print("Since the start of year before \(date.dayOfDate) \(date.monthOfDate) gone \(numberOfDays) days")
/////////////////////////////////////////
