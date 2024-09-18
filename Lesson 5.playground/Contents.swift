import UIKit

var greeting = "Hello, playground"

//let dictionary1: [Int: String] = [0: "MOM", 1: "TAD"]
//let dictionary2: Dictionary<String, Double> = ["TAD" : 30.0]


let dict2 = ["MOM" : "Tanya", "TAD": "Sergey"]
let dict1 = [0: "MOM", 1: "TAD"]
dict1[0]
dict2["MOM"]

var dict = ["car":"mers", "phone":"iPhone"]
dict.count
dict.isEmpty

var namesOfIntegers = [Int : String]()
namesOfIntegers.count
namesOfIntegers.isEmpty

dict["Mother"] = "Nina"
dict.keys
dict.values

dict.updateValue("Vladimir", forKey: "TAD")
dict
////dict["car"] = nil
//dict
//dict.removeValue(forKey: "car")
//dict = [:]
//dict

for key in dict.keys {
    print("key = \(key), value = \(dict[key]!)")
}

for (key, value) in dict {
    print("lolkey = \(key), value = \(value)")
}
//homework

var dictonary1 = [1: 4.33, 2: 5.66]
var dictonary2 = [0 : "WOW"]
var dictonary3 = [5.66 : 3.56]
var dictonary4 = ["d": 0.333333]
var dictonary5 = ["ff":"uuu"]
var dictonary6 = [4 : 4]
var dictonary7 = [true : 34]
var dictonary8 = ["mmm" : 432]
var dictonary9 = [444.2 : 12]
var dictonary10 = ["yes" : "no"]
var dictonary11 = [1 : "Yanvar", 2 : "Fevral", 3 : "Mart", 4 : "Aprel", 5 : "May", 6 : "Iun", 7 : "Iul", 8 : "Avg", 9 : "Sen", 10 : "Okt", 11 : "NoYA", 12 : "Decabr"]
var dictonary12  = [1 : "JAN", 2 : "FEB", 3 : "MAR", 4 : "APR", 5 : "MAY", 6 : "JUN", 7 : "JUL", 8 : "AUG", 9 : "SEP", 10 : "OCT", 11 : "NOV", 12 : "DEC"]

for (key, value) in dictonary1 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary2 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary3 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary4 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary5 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary6 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary7 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary8 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary9 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary10 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary11 {
    print("key is \(key), value = \(value)")
}
for (key, value) in dictonary12 {
    print("key is \(key), value = \(value)")
}
//
var emptyDictionary = ["" : 4]
emptyDictionary = [:]

if emptyDictionary.isEmpty {
    print("Dictionary is empty!")
    emptyDictionary["Age"] = 5
    emptyDictionary["secondAge"] = 2
    print(emptyDictionary)
}
