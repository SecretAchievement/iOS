import UIKit

var greeting = "Hello, playground"

var errorCode = 0

var errorCode1: Int?

let testString: String?

errorCode1 = 100
errorCode1 = nil

var myFavoriteSong: String?

myFavoriteSong = "Feeling good"
myFavoriteSong = nil

let parsedInt = Int("10")
let anotherParsedInt = Int("dog")


var result: Int? = 30
print(result as Any)
//print(result + 1)
var authorName: String? = "Serj"
var authorAge: Int? = 32

var unwrappedAuthorName = authorName!
print("Author is \(unwrappedAuthorName)")

var unwrappedAge = authorAge!
print("Age is \(authorAge as Any)")

authorName = nil
//print("Author is \(authorName!)")
if authorName != nil {
    print("Author is \(authorName!)")
} else {
    print("No author")
}

if let unwrappedAuthorName = authorName {
    print("Author is \(authorName!)")
}
else {
    print("No author")
}
//
if let authorName = authorName {
    print("Author is \(authorName)")
} else {
    print("No author")
}
if let authorName = authorName,
   let authorAge = authorAge {
    print("The author is \(authorName) who is \(authorAge) years old.")
} else  {
    print("No author or no age")
}
//
if let authorName = authorName,
   let authorAge = authorAge,
   authorAge >= 40 {
    print("The author is \(authorName) who is \(authorAge) years old.")
} else {
    print("No author or no age or age less than 40.")
}
myFavoriteSong = "everlong"
if let song = myFavoriteSong {
    print(song)
} else {
    print("i dont have favorite song")
}

func guardMyCastle(name: String?) {
    guard let castleName = name else {
        print("No castle!")
        return
    }
    print("Your castle called \(castleName) was guarded!")
}
//guardMyCastle(name: "Castle")
guardMyCastle(name: "Castle")
func calculateNumberOfSides (shape: String) -> Int? {
    switch shape {
    case "Triangle":
        return 3
    case "Square":
        return 4
    case "Rectangle":
        return 4
    case "Pentagon":
        return 5
    case "Hexagon":
        return 6
    default:
        return nil
    }
}

func maybePrintSides(shape: String) {
    let sides = calculateNumberOfSides(shape: shape)
    if let sides = sides {
        print("A \(shape) has \(sides) sides")
    } else {
        print ("I dont know number of sides for \(shape)")
    }
}
//maybePrintSides(shape: "Triangle")

func maybePrintSidesTest (shape: String) {
    guard let sides = calculateNumberOfSides(shape: shape) else {
        print("I dont know number of sides for \(shape)")
        return
    }
    print("A \(shape) has \(sides) sides")
}

var optionalInt1: Int? = 10
var mustHaveResult1 = optionalInt ?? 0

var optionalInt: Int? = 10
var mustHaveResult: Int
if let unwrapped = optionalInt {
    mustHaveResult = unwrapped
} else {
    mustHaveResult = 0
}

optionalInt1 = nil
mustHaveResult1 = optionalInt1 ?? 0
//Challenge 1

var name: String? = "Ray"
var age: Int? = nil
let distance: Float = 26.7
var middleName: String? = nil
//Challenge 2

func divideIfWhole (_ value: Int, by divisor: Int) -> Int? {
    if value % divisor == 0 {
        return value / divisor
    } else {
        return nil
    }
}

if let answer = divideIfWhole(10, by: 2) {
    print("Yes, it divides \(answer) times")
} else {
    print("Not divisible")
}
if let answer = divideIfWhole(10, by: 3) {
    print("Yes, it divides \(answer) times")
} else {
    print("Not divisible")
}
//Challenge 3

let answer1 = divideIfWhole(10, by: 2) ?? 0
print("It divides \(answer1) times")
let answer2 = divideIfWhole(10, by: 3) ?? 0
print("It divides \(answer2) times")
//Challenge 4

let number: Int??? = 10

print(number as Any)
print(number! as Any)
//1
print(number!!!)
//2
if let number   = number {
    if let number = number {
        if let number = number {
            print(number)
        }
    }
}
if let n1 = number,
   let n2 = n1,
   let n3 = n2 {
    print(n3)
}
    // 3
func printNumber(_ number: Int???) {
    guard let n1 = number, let n2 = n1, let n3 = n2 else{
        return
    }
    print(n3)
}
printNumber(number)
