import UIKit

var greeting = "Hello, playground"

//optionals

var date: String?

date = "13.12.2004"
//date = nil
//print(date!)
//if date != nil {
//    print("current date\(date!)")
//} else {
//    print("current date didnt reseived")
//}

if let unwrappedData = date {
    print("current date is \(unwrappedData)")
} else {
    print("current date didnt reseived")
}


////print("current date  is \(date!)")
//if date != nil {
//    print("current date is \(date)")
//}  else {
//    print("nil")
//}

let age : String = "20"
//print(Int(age))
if Int(age ) != nil {
    let ageInt = Int(age)!
    ageInt
}
//homework


let string1: String = "1"

let string2: String = "2"

let string3: String = "3"

let string4: String = "4"

let string5: String = "5"
let sum: String = "0"
if Int(sum) != nil {
    let allSum = Int(string1 + string2 + string3 + string4 + string5)
    //+ Int(string2) + Int(string3) + Int(string4) + Int(string5)
    print(allSum!)
}
//
let const1: String
let const2: String
let const3: String

let const4: String? = "1"
let const5: String? = "1"
let const6: String? = "3"

for z in const4! {
    print("Serj")
}

var array = [32, 24]
if array != nil {
    for z in array {
        print(z)
    }
}
