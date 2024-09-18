import UIKit

var greeting = "Hello, playground"

class Person {
    ///Name
 internal let firstName: String
    ///lastName
    let lastName: String
    var age: Int
    var isFunny: Bool
    var sayHi: String
    static var counter1 = 0
   private var mySecret: String
    init(firstName: String, lastName: String, age: Int, isFunny: Bool, sayHi: String, mySecret: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
        self.isFunny = isFunny
        self.sayHi = sayHi
        self.mySecret = mySecret
        Person.counter1 += 1
    }
    func sayHello() {
        print(sayHi)
    }
   private func sayMySecret() {
        print(mySecret)
    }
    
}
let person1 = Person(firstName: "Bob", 
                     lastName: "Cook",
                     age: 28,
                     isFunny: true,
                     sayHi: "Hi bro",
                     mySecret: "i love eating on night")
person1.firstName
person1.lastName
person1.age
person1.isFunny
//person1.sayHello()
person1.firstName
person1.age += 2

let person2 = person1
let person3 = person2

person1.age
person2.age
person3.age

person1.age = 29

person1.age
person2.age
person3.age

person2.age = 30

person1.age
person2.age
person3.age

person3.age = 100


//person1.isFunny = false

//person1.sayMySecret()


//
//let person2 = Person(firstName: "Kate", 
//                     lastName: "Milly", 
//                     age: 23, 
//                     isFunny: true,
//                     sayHi: "Hi girls!",
//                     mySecret: "i loves bob")
//person2.firstName
//person2.lastName
//person2.age
//person2.isFunny
//person2.sayHello()
//Person.counter1
//let person3 = Person(firstName: "Ann",
//                     lastName: "Meny", 
//                     age: 20,
//                     isFunny: false,
//                     sayHi: "Hi world",
//                     mySecret: "i dont like candyes")
//Person.counter1
//person1.age
//person2.age
//
//let newAnn = person3
//let newAnn2 = newAnn
//person1.sayHi = "hi!"
//newAnn.sayHi
//// person3 -> newAnn -> newAnn2
//newAnn2.age = 100
//person1

//HOMEWORK
enum Country {
    case china
    case usa
    case england
}

class MacBook {
    var age: Int
    var price: Int?
    let brand: String = "Apple"
    let ram: Int
    private var fromCountry: Country
    static private var counter: Int = 0
    
    var owners: [String?] = []
    internal var scratches: [String: Int] = [:]
    fileprivate var stickers: Set<String>
    
    init(age: Int = 2, 
         price: Int? = nil,
         ram: Int = 18,
         owners: [String],
         scratches: [String : Int],
         stickers: Set<String>,
         fromCountry: Country = .england) {
        self.fromCountry = fromCountry
        self.age = age
        self.price = price
        self.ram = ram
        self.owners = owners
        self.scratches = scratches
        self.stickers = stickers
        MacBook.counter += 1
    } //компилятор не ругается, но в свифте инициализировать оционалы нет необходимости, потому что они по умолчанию имеют значение nil
    
    public enum MemoryGB {
        case eight
        case sixteen
        case thirtytwo
    }
    
    enum Colors {
    case black
    case silver
    case white
    case gold
    }
    
   private func cpu() {
        print("My CPU is M1!!!")
    }
    open func macBookName() {
         cpu()
         print("My name is MacBook!")
     }
    internal func myCounter() {
        print("My counter is \(MacBook.counter)")
    }
    
    func myCountry() {
        switch fromCountry {
        case .china:
            print("Im from china!")
        case .usa:
            print("Im from usa!")
        case .england:
            print("Im from england!")
        }
    }
}
let myMacBook = MacBook(owners: ["Sasha", "Petya"], scratches: ["Big" : 12, "Small" : 89], stickers: ["Batman", "Superman", "Cat", "Monkey"])
myMacBook.myCounter()
//2 сижу изучаю доку
//3 уровни доступа тоже

