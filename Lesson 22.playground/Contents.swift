import UIKit

var greeting = "Hello, playground"
//Protocols
protocol OneProtocol {
    var name: String {get set}
    var age: String {get set}
    //func hello(text: String) {
}
protocol TwoProtocol: OneProtocol {
}
//structs
struct Parents: OneProtocol {
    var age: String
    var name: String
}
struct Kids: OneProtocol {
    var age: String
    var name: String
}
struct Cats: OneProtocol{
    var age: String
    var name: String
}
//objects
var parent1 = Parents(age: "28", name: "Jack")
var parent2 = Parents(age: "25", name: "Jina")
var kids = Kids(age: "Masha", name: "5")
var cat = Cats(age: "2", name: "Murka")

//var array: [Any] = [parent1, parent2, kids, cat]
//for value in array {
//    if let parent = value as? Parents {
//        print(parent.name)
//    } else if let kid = value as? Kids {
//        print(kid.name)
//    }
//}
var array: [OneProtocol] = [parent1, parent2, kids, cat]
func sortFamily(array: [OneProtocol]) {
    for value in array {
        print("(\(value.name) - age = \(value.age)")
    }
}
sortFamily(array: array)
//HOMEWORK
protocol SomeProtocol {
    var mustBeSettable: Int {get set}
    var doesNotToBeSettable: Int {get}
}
protocol AnotherProtocol {
    static var someTypePropert: Int {get set}
}
protocol FullyNamed {
    var fullName: String {get}
}

class SomeClass: SomeProtocol {
    var mustBeSettable: Int
    var doesNotToBeSettable: Int
    init(mustBeSettable: Int, doesNotToBeSettable: Int) {
        self.mustBeSettable = mustBeSettable
        self.doesNotToBeSettable = doesNotToBeSettable
    }
}
struct Person: FullyNamed {
    var fullName: String
}
let john = Person(fullName: "John Appleseed")
class Starship: FullyNamed {
    var prefix: String?
    var name: String
    init(prefix: String? = nil, name: String) {
        self.prefix = prefix
        self.name = name
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
protocol SomeProtocol1 {
    static func someTypeMethod()
}
protocol RandomNumberGenerator {
    func random() -> Double
}
class LinearCongruentialGenerator: RandomNumberGenerator {
    var lastRandom = 42.0
    let m = 139968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom / m
    }
}
let generator = LinearCongruentialGenerator()
print("Here is a randon number: \(generator.random())")
print("And another one: \(generator.random())")
//5) Создать протокол Hotel с инициализатором который принимает roomCount, после создать class HotelAlfa добавить свойство roomCount и подписаться на этот протокол
protocol Hotel {
    var roomCount: Int { get  }
}
class HotelAlfa: Hotel {
    var roomCount: Int
    init(roomCount: Int) {
        self.roomCount = roomCount
    }
}
var room = HotelAlfa(roomCount: 4)
print(room.roomCount)
/*
 6) Создать protocol GameDice у него {get} свойство numberDice далее нужно расширить Int так что б когда мы напишем такую конструкцию "let diceCoub = 4 \n diceCoub.numberDice" в консоле мы увидели такую строку - "Выпало 4 на кубике"
 */
protocol GameDice {
    var numberDice: String {get}
}
extension Int: GameDice {
    var numberDice: String {
        
        return "Выпало \(self) на кубике"
    }
}
let diceCoub = 4
diceCoub.numberDice
/*
 7) Создать протокол с одним методом и 2 мя свойствами одно из них сделать явно optional, создать класс, подписать на протокол и реализовать только 1 обязательное свойство
 */
@objc protocol epicProtocol {
    @objc optional var digit1: Int {get}
    var digit2: Int {get}
}
class epicClass: epicProtocol {
    var digit2: Int
    init(digit2: Int) {
        self.digit2 = digit2
    }
}
var z = epicClass(digit2: 5)
print(z.digit2)
/*
 4) Реализовать структуру IOSCollection и создать в ней copy on write по типу - https://www.youtube.com/watch?v=QsoqHGgX2rE&t=594s
 */
struct IOSCollection<T> {
    var myArray = [T]()
}

var newArray = [4, 5, 3, 5, 5]
var collection1 = IOSCollection(myArray: newArray)
var collection2 = collection1

collection1.myArray.append(8)
print(collection1)
print(collection2)
