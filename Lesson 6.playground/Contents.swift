import UIKit

var greeting = "Hello, playground"

//let oneTuple: (Int, String, Double, Bool) = (1, "Polina", 5.555, false)
let oneTuple = (1, "Polina", 5.555, false)

let (number1, name, decimal, bool) = oneTuple
number1
name
decimal
bool

let (_, _, c, _) = oneTuple
c

oneTuple.0
oneTuple.1
oneTuple.2
oneTuple.3

let tuple = (one:1, name:"Polina", bool: true)
tuple.0
tuple.1
tuple.2
tuple.name

//let name1 = "Sergey"
//let (name1, name2, name3) = ("Sergey", "Polina", "Jack")
//name1

let nameTuples = (name1: "Sergey", name2: "Polina", name3: "Jack")
nameTuples.name1
nameTuples.0

print(nameTuples)
let nameNames = "Jack"
let age = 25

print("\(nameNames) \(age)")
print((nameNames, age))
//homework

var testTuple1 = (1, "March", true)

var testTuple2 = (8, "My", 55.323)

var testTuple3 = ("Lol", "Wow", 33)

var testTuple4 = (false, 232332.3232, 4)

var testTuple5 = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

var testTuple6 = ("Jan", "Fev", "Mart", "Apr", "May", "Iun", "Iul", "Avg", "Sen", "Oct", "Noya", "Dec")
print(testTuple6)
print((testTuple6.0, testTuple6.1))
print("\(testTuple1.2) + \(testTuple4.0)")
//empty
var emptyTuple: (Int, Double)
