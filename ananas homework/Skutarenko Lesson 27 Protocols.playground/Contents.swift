import UIKit
import Foundation
var greeting = "Hello, playground"
//protocols
protocol Priority {
    var order: Int {get}
}
protocol EntryName: Priority {
    var label: String {get}
   mutating func printLabel()
    init(name: String)
}

//human
class Human {
    
}
//farmer
class Farmer: Human, EntryName, Priority {
    
    required init(name: String) {
        firstName = name
        //self.lastName = "Shmob"
    }
    
    func printLabel() {
        firstName += "newName"
        print(firstName + "farmer")
    }
    var firstName : String
    var lastName : String?
    var fullName : String {
        return firstName + " " + lastName!
    }
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    var label: String {
        return fullName
    }
    let order = 1
}
//animal
class Animal {
}
//cow
class Cow: Animal, EntryName {
    func printSomeText() {
        print("someText" + label)
    }
    required init(name: String) {
        self.name = name
    }
    
    
    func printLabel() {
        print(label)
    }
    var name: String?
    var label: String {
        return name ?? "a cow"
    }
    let order = 2
}
//grass
struct Grass: EntryName {
    
     init(name: String) {
        type = name
    }
    init(type: String) {
        self.type = type
    }
    
    func printLabel() {
        print("this is grass")
    }
    var type: String
    var label: String {
        return "Grass: + \(type)"
    }
    let order = 3
}
//экземпляры класса
let farmer1 = Farmer(firstName: "Bob", lastName: "Shmob")
let farmer2 = Farmer(firstName: "Bill", lastName: "Shmill")
let farmer3 = Farmer(firstName: "Brian", lastName: "Shmian")
let cow1 = Cow(name: "Burenka")
let cow2 = Cow(name: "Maria")
let grass1 = Grass(type: "Bermuda")
let grass2 = Grass(type: "St. Augustine")
//array

//for value in array {
//    //    if let grass = value as? Grass {
//    //        print(grass.type)
//    //    } else if let student = value as? Student {
//    //        print(student.fullName)
//    //    } else if let cow = value as? Cow {
//    //        print(cow.name ?? "a cow")
//    //    }
//    //}
//    switch value {
//    case let grass as Grass: print(grass.type)
//    case let student as Student: print(student.fullName)
//    case let cow as Cow: print(cow.name ?? "a cow")
//    default: break
//    }
//}
func printFarm(array:inout[EntryName]) {
    
    array.sort { a, b in
        if a.order == b.order {
            return a.label.lowercased() < b.label.lowercased()
        } else {
            return a.order < b.order
        }
    }
    for value in array {
        print(value.label)
    }
}

var array: [EntryName] = [cow1, farmer1, grass2, cow2, farmer3, grass1, farmer2]
printFarm(array: &array)
//HOMEWORK
//1
protocol Food {
    var name: String {get}
    func taste() -> String
}
class Apple: Food {
    var name = "Apple"
    func taste() -> String {
        "I am \(name) and i am delicious!"
    }
}
class Orange: Food {
    var name = "Orange"
    func taste() -> String {
        "I am \(name) and i am delicious!"
    }
}
var apple = Apple()
var orange = Orange()
var bag: [Food] = [apple, orange]


for value in bag {
    print(value.taste())
}
//2
protocol Storable: Food {
    var daysToExpired: Int {get}
}

class Meet: Storable {
    var daysToExpired: Int
    init(daysToExpired: Int, expired: Bool = false, name: String = "Meet") {
        self.daysToExpired = daysToExpired
        self.expired = expired
        self.name = name
    }
    
    var expired = false
    var name = "Meet"
    func taste() -> String {
        "I am \(name) and i am delicious and starable!"
    }
}
class Cheese: Storable {
    var daysToExpired: Int
    var expired = false
    var name = "Cheese"
    func taste() -> String {
        "I am \(name) and i am delicious and starable!"
    }
    init(daysToExpired: Int, expired: Bool = false, name: String = "Cheese") {
        self.daysToExpired = daysToExpired
        self.expired = expired
        self.name = name
    }
}
var meet = Meet(daysToExpired: 10)
var cheese = Cheese(daysToExpired: 30)

var refrigirator: [Storable] = [meet, cheese]

var result = refrigirator.sorted { a, b in
    a.daysToExpired > b.daysToExpired
}
print(result)
//PART 2

cow1.printLabel()
farmer1.printLabel()
grass1.printLabel()
farmer1.fullName
var someAnimal: EntryName = Cow(name: "someAnimal")

Int.max
Int.min

protocol MidleValue {
    static func mid() -> UInt
}

extension UInt: MidleValue {
    static func mid() -> UInt {
        return (UInt.max + UInt.min) / 2
    }
}
var a: UInt = 5

UInt.mid()
extension EntryName {
    func printSomeText() {
        print("someText")
    }
}
cow1.printSomeText()
farmer1.printSomeText()

var array1: [EntryName & Priority] = [farmer1, cow1]
func someFunc (unit: EntryName & Priority) {
    print(unit.label)
}

let array2: [Any] = [123, "abc", farmer2, grass2, cow1]
for obj in array2 {
    print(obj)
    if var obj2 = obj as? EntryName {
        print(obj2.label)
        obj2.printSomeText()
    }
}
//usov

protocol RandomNumberGenerator {
    var randomCollection: [Int] {get set}
    
    func getRandomNumber() -> Int
    
    mutating func setNewRandomCollection(newValue: [Int])
}
struct RandomGenerator: RandomNumberGenerator {
    var randomCollection: [Int] = [1, 2, 3, 4, 5]
    func getRandomNumber() -> Int {
        return randomCollection.randomElement() ?? 0
    }
    mutating func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}
class RandomGeneratorClass: RandomNumberGenerator {
    var randomCollection: [Int] = [1,2,3,4,5]
    func getRandomNumber() -> Int {
        if let randomElement = randomCollection.randomElement() {
            return randomElement
        }
        return 0
    }
    // не используется модификатор mutating
    func setNewRandomCollection(newValue: [Int]) {
        self.randomCollection = newValue
    }
}
protocol Named {
    init (name: String)
}
class Person: Named {
    var name: String
    required init(name: String) {
        self.name = name
    }
}
// as? as!
protocol HasValue {
    var value: Int {get set}
}
class ClassWithValue: HasValue {
    var value: Int
    init(value: Int) {
        self.value = value
    }
}
struct StructWithValue: HasValue {
    var value: Int
}
let objects: [Any] = [2, 
                      StructWithValue(value: 3),
                      true,
                      ClassWithValue(value: 6),
                      "Usov"
]
for object in objects {
    if let elementWithValue = object as? HasValue {
        print("Value is \(elementWithValue.value)")
    }
}
for object in objects {
    print(object is HasValue)
}
//inhereting

protocol GeometricFigureWithXAxis {
    var x: Int {get set}
}
protocol GeometricFigureWithYAxis {
    var y: Int {get set}
}
protocol GeometricFigureWithTwoAxis: GeometricFigureWithXAxis, GeometricFigureWithYAxis {
    var distanceFromCenter: Float {get}
}
struct Figure2D: GeometricFigureWithTwoAxis {
    var x: Int = 0
    var y: Int = 0
    var distanceFromCenter: Float {
        let xPow = pow(Double(self.x), 2)
        let yPow = pow(Double(self.y), 2)
        let length = sqrt(xPow + yPow)
        return Float(length)
    }
}
//классовые протоколы
protocol SuperProtocol {}
protocol SubProtocol: AnyObject, SuperProtocol {}
class ClassWithProtocol: SubProtocol {}
//композиция протоколов
protocol Named1 {
    var name: String {get}
}
protocol Aged {
    var age: Int {get}
}
struct Person1: Named1, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthsday(celebrator: Named1 & Aged) {
    print("HP you, \(celebrator.name)! you are \(celebrator.age)")
}
let person = Person1(name: "John", age: 99)
wishHappyBirthsday(celebrator: person)
