import UIKit

var greeting = "Hello, playground"
// MARK: = Struct Lesson 13

// Классы = ссылочный тип (reference type) (как и кложуры, функции и классы)
//Структуры - тип значение (value type)
print("f")
//ссылочный тип не копируется. Вместо копирования используется ссылка на существующий экземпляр
//тип значения - это тип, значение которого копируется, когда оно присваивается константе или переменной, или когда передается функции

//MARK: Синтаксис

struct Phone {
    //private
    private var model: String
    var brand: String
    let year: Int
    var memory: Int
    
    func sayModel() -> String {
        let myModel = "my model is \(model)"
        return myModel
    }
    init(model: String, brand: String, year: Int, memory: Int) {
        self.model = model
        self.brand = brand
        self.year = year
        self.memory = memory
    }
}
//MARK: экземпляры и структуры

let phone1 = Phone(model: "iPhone", brand: "Apple", year: 2020, memory: 128)
phone1.brand
//phone1.model
phone1.sayModel()
// MARK: Как работает vlue type (тип значение)

var myPhone = Phone(model: "iPhone", brand: "Apple", year: 2021, memory: 128)
var myPhone1 = myPhone
var myPhone2 = myPhone1



myPhone.brand = "ddd"
myPhone1.brand
myPhone2.brand
myPhone.brand

myPhone1.memory = 256

myPhone.year == myPhone1.year
//myPhone == myPhone1
//myPhone === myPhone1
// MARK: Уровни доступа

/*
 open
 Public
 Internal (default)
 File - private
 Private
 */
//HOMEWORK

//1.1
class MacBookAir {
    open var price: Int = 1000000
    private var memory: Int = 64
    fileprivate var screeSize: Int = 8
   internal var ownerName: String = "Steeve Jobs"
    open func sayOwnerName() {
        print("My owner is \(ownerName) and screen size is \(screeSize)")
    }
     enum Colors {
        case Green
        case Blue
        case Red
        case Yellow
    }
}

struct MacBookPro {
    public var price: Int?
    fileprivate var memory: Int
    private var screeSize: Int
    static var weight:Int = 1
    internal var ownerName: String
    public func sayOwnerName() {
        print("My owner is \(ownerName) and memory is \(memory)")
    }
    public enum Colors {
        case White
        case Black
    }
    init(price: Int, memory: Int, screeSize: Int, ownerName: String) {
        self.price = price
        self.memory = memory
        self.screeSize = screeSize
        self.ownerName = ownerName
    }
}
//1.2 жизни добавил
//1.3 модификаторы добавил
//1.4
//class
let myAir = MacBookAir()
let myAir1 = myAir
let myAir2 = myAir1
//struct
var myPro = MacBookPro(price: 12, memory: 64, screeSize: 12, ownerName: "Bill Gates")
let myPro1 = myPro
let myPro2 = myPro1
//1.5
myAir.ownerName = "Petya"
myAir.price = 10
myAir.screeSize = 60
myPro.ownerName = "Lesha"
myPro.price = 12
myPro.memory = 9
//1.6
myAir.sayOwnerName()
myPro.sayOwnerName()
//1.7
myAir.ownerName = "Jack"
myAir1.ownerName //jack
myAir2.ownerName //jack
myPro.ownerName = "John"
myPro1.ownerName //bill gates
myPro2.ownerName //bill gates
//на наглядном примере выше можно сделать вывод, что структуры - это value type, а классы - reference type, но отличаются эти два товарища не только семантикой, но еще и некоторыми вещами: структуры не поддерживают наследование, не имеют деинициализаторов, также классы могут изменять свои свойства, даже если они let
//2 изучаю, интересно
//3 изучаю, интересно
//4 == и === имеют разные предназначения. == используют для проверки эквивалентности значений, а === используется для сравнения ссылок на обёекты классов
//4.1
class Person {
    var age = 10
}
class Human {
    var age = 20
}
var person = Person()
var human = Human()
print(person === human)
//4.2
struct Hobbit: Equatable {
    let name: String
    static func == (left: Hobbit, right: Hobbit) -> Bool {
        return left.name == right.name
    }
}
let person1 = Hobbit(name: "Sam")
let person2 = Hobbit(name: "Frodo")
print(person1 == person2)
//4.3
print(person.age == human.age)
//4.4
struct Dog {
    var name: String
    var age: Int
}
struct Cat {
    var name: String
}
var dog = Dog(name: "Dog", age: 55)
var cat = Cat(name: "Cat")
print(dog.name == cat.name)
//4.5
//print(person === dog) //компилятор хочет, чтобы dpg был классом, а не структурой
//4.6
print(person.age == dog.age)
//5 читаю, интересно
//5.1 public дсоутпен для использования за пределами модуля (например, в другом фреймворке или другой апе), но его нельзя наследовать или переопределять за пределами модуля, а вот open доступен для использования, наследоваения и переопределения как внутри модуля, так и за его пределами
//5.2 private - максимальное ограничение доступа, доступ есть только внутри класса или структуры. fileprivate - элемент уже доступен в пределах файла, но не за его пределами, то есть есть доступ, например, у нескольких классов или структур
//2.0 читаю, интересно
