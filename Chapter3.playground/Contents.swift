import UIKit

var greeting = "Hello, playground"


let yes: Bool = true
let no = false

let doesOneEqualTwo = !(1 == 2)

let doesOneEqualTwoAgain = (1 != 2)

let doesOneEqualTwoAgain1 = (1 >= 2)
let doesOneEqualTwoAgain2 = (1 <= 2)


let and = true && true

let or = true || false

let andTrue = 1 < 2 && 4 > 3
let andFalse = 1 < 2 && 3 > 4
let orTrue = 1 > 2 || 3 > 4
let orFalse = 1 == 2 || 3 == 4

let andOr = (1 < 2 && 3 > 4) || 1 < 4

let guess = "dog"
let dogEqualsCat = guess == "cat"
let order = "cat" < "dog"

var switchState = true
switchState.toggle() // switchState = false
switchState.toggle() // switchState = true

let myAge: Int = 32
let isTeenager: Bool = myAge >= 13 && myAge <= 19

let theirAge: Int = 30
let bothTeenagers: Bool = theirAge >= 13 && theirAge <= 19 && isTeenager

let reader: String = "Serj"
let author: String = "Matt"
let authorIsReader: Bool = reader == author

let readerBeforeAuthor: Bool = reader < author

if 3 > 2 {
    
    print("Yes, 3 is greater than 1")
}


var animal = "Fox"
//animal = "Dog"

if animal == "Cat" || animal == "Dog" {
    print("Animal is a house pet")
} else {
    print("Animal is not a house pet")
}



let hourOfDay = 22
var timeOfDay = ""
if hourOfDay < 6 {   
    timeOfDay = "Early morning"
} else if hourOfDay < 12 {   timeOfDay = "Morning"
} else if hourOfDay < 17 {   timeOfDay = "Afternoon"
} else if hourOfDay < 20 {   timeOfDay = "Evening"
} else if hourOfDay < 24 {   timeOfDay = "Late evening"
} else {   
    timeOfDay = "INVALID HOUR!" }
print(timeOfDay)



//if 1 > 2 && name == "Matt" {
    
var hoursWorked = 45

var price = 0
if hoursWorked > 40 {
    let hoursOver40 = hoursWorked - 40
    price = price + hoursOver40 * 50
    hoursWorked = hoursWorked - hoursOver40
}
price = price +  hoursWorked * 25
print(price)
////////////////////
let a = 5
let b = 10

let min: Int
if a < b {   min = a }
else 
{   min = b }

let max: Int
if a > b
{   max = a
} else {   max = b }
////////////////////

let x = 5
let y = 10


let min1 = x < y ? x : y
let max1 = x > y ? x : y


///Exercises

let myAgeTest: Int = 32
if  myAgeTest > 13 && myAgeTest < 19 {
    print("a teenager")
} else {
    print("not a teenager")
}

let answer = myAgeTest >= 13 && myAgeTest <= 19 ? "teenager" : "not a teenager"
print(answer)

///LOOPS

// var sum = 1

//*while sum < 1000 {
  //  sum = sum + (sum +1)
//}

/*var counter: Int = 0
while counter < 10 {
    print("counter is \(counter)")
    counter = counter + 1
}*/
var counter: Int = 0
var roll: Int = 0
repeat {
    roll = Int.random(in: 0...5)
    counter += 1
    print("after \(counter) rolls, roll is \(roll)")
} while roll != 0


let firstName = "Matt"
var lastName = ""
if firstName == "Matt" {
    lastName = "Galloway" }
else if firstName == "Ray" {
    let lastName = "Wenderlich" }
let fullName = firstName + " " + lastName

let answer1 = true && true
let answer2 = false || false
let answer3 = (true && 1 != 2) || (4 > 3 && 100 < 1)
let answer4 = ((10 / 2) > 3) && ((10 % 2) == 0)

let currentPosition: Int = Int.random(in: 1...20)
let diceRoll: Int = Int.random(in: 1...6)
var nextPosition = 0
print("Current is \(currentPosition)")
print("Dice is \(diceRoll)")
print("next is \(nextPosition)")

if currentPosition + diceRoll == 3 {
    nextPosition = 15
}
else if currentPosition + diceRoll == 7 {
    nextPosition = 12
}
else if currentPosition + diceRoll == 11 {
    nextPosition = 2
}
else if currentPosition + diceRoll == 17 {
    nextPosition = 9
}
print("Next Position is \(nextPosition)")

//Challenge 4

//let month: String = ""


/*:
 ### Challenge 4: Number of days in a month
 Given a year reprsented by an `Int` and a month represented by a `String` in all lowercase and using the first three letters, calculate the number of days in the month. You need to account for leap years remembering that February ("feb") has 29 days in a leap year and 28 otherwise. A leap year occurs every 4 years, unless the year is divisible by 100, but then if it's divisible by 400 then it is actually a leap year.
 */


let month = "feb"
let year = 2016

var days = 0

if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
    days = 31
} else if  month == "apr" || month == "jun" || month == "sep" || month == "nov" {
    days = 30
} else if month == "feb" {
    
    if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {
        days = 29
    } else {
        days = 28
    }
    
}
print("Days in month is \(days)")
    



// if month == "jan" || month == "mar" || month == "may" || month == "jul" || month == "aug" || month == "oct" || month == "dec" {
//  if (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) {


let number = 1500
var trial = 1
var times = 0
while trial < number {
    trial *= 2
    times = times + 1
}
print("Next power of 2 >= \(number) is \(trial) which is 2 to the power of \(times)")


var depth = 5
var count = 1
var triangularNumber = 0

while count <= depth {
    
    triangularNumber += count
    count += 1
}

print("Triangular number with depth \(depth) is \(triangularNumber)")



let n = 10
var current = 1
var previous = 1
var done = 2
while done < n {
    let next = current + previous
    previous = current
    current = next
    done = done + 1
}
print("Fibbonaci number \(n) is \(current)" )

let factor = 7


var i = 0
var accumulator = 0
while i <= 12 {
    print("\(factor) x \(i) = \(accumulator)")
    accumulator += 7
    i += 1
}

/* Print a table showing the number of combinations to create each number from 2 to 12 given 2 six-sided dice rolls. You should not use a formula but rather compute the number of combinations exhaustively by considering each possible dice roll. */


var target = 2

while target <= 12 {
  var combinationsFound = 0
  var valueOnFirstDice = 1
  while valueOnFirstDice <= 6 {
    var valueOnSecondDice = 1
    while valueOnSecondDice <= 6 {
      if valueOnFirstDice + valueOnSecondDice == target {
        combinationsFound += 1
      }
      valueOnSecondDice += 1
    }
    valueOnFirstDice += 1
  }

  print("\(target):\t\(combinationsFound)")

  target += 1
}



























































