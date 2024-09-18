import UIKit

var greeting = "Hello, playground"
//HUMAN
class Human {
    var firstName: String = ""
    var lastName: String = ""
    var fullName: String {
        return firstName + " " + lastName
    }
    func sayHello() -> String {
        return "Hello"
    }
}
let human = Human()
human.firstName = "Alex"
human.lastName = "Skutarenko"
human.sayHello()
human.fullName
//STUDENT
class Student: Human {
    final override func sayHello() -> String {
        return super.sayHello() + " my Friend"
    }
}
let student = Student()
student.firstName = "Max"
student.lastName = "Mix"
student.sayHello()
//KID
class Kid: Human {
    
    var favoriteToy: String = "iMac"
    override func sayHello() -> String {
        return "agu"
    }
    override var fullName: String {
        return firstName
    }
    
    override var firstName: String {
        set {
            super.firstName = newValue + ":)"
        }
        get {
            return super.firstName
        }
    }
    override var lastName: String {
        didSet {
            print("new value " + self.lastName )
        }
    }
}
let kid = Kid()
kid.firstName = "Kid"
kid.lastName = "12345"
kid.sayHello()
kid.fullName
//SMARTHUMAN
class SmartHuman: Human {
    override func sayHello() -> String {
        return super.sayHello() + " my Friend"
    }
    override var fullName: String {
        return firstName
    }
}
//array
let array: [Human] = [kid, student, human]
for value in array {
    print(value.sayHello())
}
//HOMEWORK
class Artist {
    var firstName: String = ""
    var lastName: String = ""
    func concert () -> String {
        return "we are on the concert! And "
    }
}
class BreakDancer: Artist {
    override func concert() -> String {
        let a = super.concert() + "i am dancing!"
        print(a)
        return a
    }
}
class Singer: Artist {
    override func concert() -> String {
        let a = super.concert() + "i am singing!"
        print(a)
        return a
    }
}
class Musician: Artist {
    override func concert() -> String {
        let a = super.concert() + "I am playing music!"
        print(a)
        return a
    }
}
class ArtMaker: Artist {
    override func concert() -> String {
        let a = super.concert() +  "i am painting!"
        print(a)
        return a
    }
    override var firstName: String {
        set {
            "Awesome" + newValue
        } get {
            return super.firstName
        }
        
    }
    override var lastName: String {
        set {
            newValue + "i am a great!!!"
        }
        get {
            return super.lastName
        }
    }
}

let breakDancer = BreakDancer()
let musician = Musician()
let singer = Singer()
let artMaker = ArtMaker()


let myArray = [breakDancer, musician, singer, artMaker]
for index in myArray {
    index.concert()
}
//HOMEWORK 2

class Transport {
    var speed: Int {
        return 1 + 1
    }
    var amount: Int {
        return 1 + 100
    }
    var cost: Int {
        return 20 + 5
    }
    func howMuch (people: Int) -> Int {
        let result: Int
        result = people * cost
        return result
    }
    
}
class Plane: Transport {
    override var speed: Int {
        return 10000
    }
    override var amount: Int {
        return 200
    }
    override var cost: Int {
        return 3000
    }
}
class Ship: Transport {
    override var speed: Int {
        return 1000000
    }
    override var amount: Int {
        return 20000
    }
    override var cost: Int {
        return 30000
    }
}
class Helicopter: Transport {
    override var speed: Int {
        return 100
    }
    override var amount: Int {
        return 5
    }
    override var cost: Int {
        return 300000
    }
}
class Cart: Transport {
    override var speed: Int {
        return 100
    }
    override var amount: Int {
        return 5
    }
    override var cost: Int {
        return 3
    }
}
class Train: Transport {
    override var speed: Int {
        return 110
    }
    override var amount: Int {
        return 3000
    }
    override var cost: Int {
        return 30
    }
}

var example1 = Train()
print(example1.howMuch(people: 100))

class Animal {
    var name = String()
    var age = Int()
    func makeSound() {
        print("default sound")
    }
}
class Dog: Animal {
    override func makeSound() {
        print("Woof")
    }
}
class Cat: Animal {
    override func makeSound() {
        print("Meow")
    }
}
var myDog = Dog()
myDog.makeSound()
var myCat = Cat()
myCat.makeSound()
class Vehicle {
    var brand = String()
    var year = Int()
    init(brand: String = String(), year: Int = Int()) {
        self.brand = brand
        self.year = year
    }
    
    func startEngine() {
        print("engine starts!")
    }
}

class Car: Vehicle {
    var numberOfDoors = Int()
    override func startEngine() {
        super.startEngine()
        print("Number of doors: \(numberOfDoors). Brand: \(brand)")
    }
    init(numberOfDoors: Int = 4) {
        self.numberOfDoors = numberOfDoors
        super.init(brand: "audi", year: 1967)
    }
}
//3
class Shape {
    func area() -> Double {
        return 0.0
    }
}


class Rectangle: Shape {
    var a = Double()
    var b = Double()
    init(a: Double = Double(), b: Double = Double()) {
        self.a = a
        self.b = b
    }
    override func area() -> Double {
       
        return a * b
    }
}
class Circle: Shape {
    var r = Double()
    init(r: Double = Double()) {
        self.r = r
    }
    override func area() -> Double {
        
        return Double.pi * r * r
    }
}
var rectangle = Rectangle()
var circle = Circle()
//4
class Employee {
    var name: String
    var salary: Int
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }
    func work() {
        print("Workier doing work")
    }
}


class Manager: Employee {
    var teamSize: Int
    init(name: String, salary: Int, teamSize: Int = 0) {
        self.teamSize = teamSize
        super.init(name: name, salary: salary)
    }
    override func work() {
        super.work()
        print("Manager \(name) is leading a team of \(teamSize) people.")
    }
}
//5
class BankAccount {
    var balance: Int
    init(balance: Int) {
        self.balance = balance
    }
    
    func deposite(amount: Int)  {
        balance += amount
               print("Deposited \(amount). New balance is \(balance).")
    }
    func withdraw(amount: Int) {
        if amount <= balance {
                   balance -= amount
                   print("Withdrew \(amount). New balance is \(balance).")
               } else {
                   print("Insufficient funds. Withdrawal amount exceeds current balance.")
               }
    }
}

class SavingsAccount: BankAccount {
    final override func withdraw(amount: Int) {
        if amount <= balance {
                    balance -= amount
                    print("Withdrew \(amount) from savings account. New balance is \(balance).")
                } else {
                    print("Insufficient funds in savings account. Withdrawal amount exceeds current balance.")
                }
    }
}
//6

var array1: [Any] = [myCat, myDog]
for obj in array1 {
    if obj is Dog {
        print("this is a dog")
        let dog = obj as! Dog
    } else if obj is Cat {
        print("This is a cat")
        let cat = obj as! Cat
    }
}
