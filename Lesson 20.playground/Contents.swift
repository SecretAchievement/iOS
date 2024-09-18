import UIKit

var greeting = "Hello, playground"

var a = String()

extension String {
    func sayHello() {
        print("Hello")
    }
}

var hello = "Hi"
hello.sayHello()
var ae = String()
ae.sayHello()

"Hi".sayHello()
//_____________Int----
extension Int {
    var squared: Int {
        return (self * self)
    }
}

var newInt    = 30
newInt.squared
newInt.squared

extension Int {
    func funcSquared() -> Int {
        return (self * self)
    }
}

var sqrInt = 3
sqrInt.funcSquared()

140.funcSquared()

//----------Class----------------

class Vova {
    var nick = "The Swift Dev"
}
let realVova = Vova()
realVova.nick

extension Vova {
    func allSelf() -> String {
        return "My name is Vova, my nick - \(nick)"
    }
}
var secondVova = Vova()
secondVova.allSelf()
//HOMEWORK

extension String {
    subscript(range: Range<Int>) -> String {
        let start = self.index(self.startIndex, offsetBy: range.startIndex)
        let end = self.index(start, offsetBy: range.endIndex)
        if range.endIndex > self.count {
        }
            return String(self[start..<end])
    }
}


var newString = "I am busy"
print(newString[0..<9])
//4) Расширить Int и добавить 3 метода возведение в квадрат, куб, степень
extension Int {
    func intSquared() -> Int {
        return (self * self)
    }
    func intCoub() -> Int {
        return (self * self * self)
    }
    func stepen (stepen: Int) -> Int {
        return (self * (self * stepen))
    }
}
var x: Int
x = 2
x.stepen(stepen: 4)
//5)Расширить еще 3 структуры на свой вкус и в коментах обосновать для чего это было сделано

struct Car {
    var maxSpeed: Int
    var colour: String
}
//хочу расширить так, чтоб макс скорость была не инт, а дабл
extension Car {
    func speedFunction (maxSpeedDouble: Double) -> String {
        return ("Max speed in Double is \(maxSpeedDouble)")
    }
}
var car = Car(maxSpeed: 42, colour: "white")
car.speedFunction(maxSpeedDouble: 434.342342)
//6)Добавьте проперти, которое возвращает количество символов в числе

extension Int {
    
//    var digit: Int {
//        let numberString = String(self.digit)
//        let numberOfDigits = numberString.count
//        return numberOfDigits
//    }
    func digitFunc (digit: Int) -> Int {
        let numberString = String(digit)
        let numberOfDigits = numberString.count
        return numberOfDigits
    }
}
var z: Int
z = 4243525242523
z.digitFunc(digit: 4243525242523)
//7)Добавить метод который говорит число положительное или отрицательное

extension Int {
    func markCheck (number: Int) -> String {
        if number < 0 {
            return "number is negative"
        } else {
            return "number is positive"
        }
    }
}
let myNumber = Int()
myNumber.markCheck(number: -33)
