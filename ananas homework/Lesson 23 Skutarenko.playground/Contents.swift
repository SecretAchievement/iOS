import UIKit
import Foundation
//var greeting = "Hello, playground"
//
//class Address {
//    var street = "Deribasovskaya"
//    var number = "1"
//    var city = "Odessa"
//    var country = "Ukraine"
//}
//
//struct Garage {
//    var size = 2
//}
//
//class House {
//    var rooms = 1
//    var address = Address()
//    var garage: Garage? //= Garage()
//}
//
//class Car {
//    var model = "Zaporojec"
//    func start() {
//    }
//}
//
//class Person1 {
//    var cars: [Car]? = [Car()]
//    var house: House? = House()
//}
//
//let p = Person1()
//
//if let house = p.house, var garage = house.garage {
//    garage.size = 3
//    print("upgrade!")
//} else {
//    print("failure")
//}
//
//if let size = p.house?.garage?.size {
//    print("Garage size is \(size)")
//}
//
//p.cars?[0].start()
//print("start!")
//
////
//
//
//class Symbol {
//    
//}
//
//class A: Symbol {
//    func aa() {
//        
//    }
//}
//class B: Symbol {
//    func bb() {
//        
//    }
//}
//let array: [Any] = [A(), B(), Symbol(), A(), B(), NSObject(), {() -> () in return}]
//
//var aCount = 0
//var bCount = 0
//var cCount = 0
//
//
//for value in array {
//    if value is A {
//        
//      //  let a = value as A
//        
//        aCount += 1
//    } else if value is B {
//        bCount += 1
//    } else if value is Symbol  {
//        cCount += 1
//    }
//    
//    if value is String {
//        print("tada")
//    }
//    
//    if let fun = value as? () -> () {
//        print("tada")
//        fun()
//    }
//    
//    if let a = value as? A {
//        a.aa()
//    } else if let b = value as? B {
//        b.bb()
//    }
//    
//  //  let a = value as A
//    
//}
//aCount
//bCount
//cCount
//HOMEWORK


///ДЗ 1
///я всегда хотел узнать сколько у меня родственников.....
///строим соц сеть
///
///сделайте класс "человек" с проперти:
///папа, мама, братья, сестры (это должно быть всё опционально)
///сделать 20-30 человек
///взять одного товарища и поставьте ему папу и маму
///папе и маме тоже поставьте братьев, сестер, пап и мам и т.д.
///надо как бы построить дерево общее
///посчитайте сколько у этого человека будет например двоюродных братьев, троюродных сестёр, дядь, тёть (через опшинал чейнинг)


struct Address {
    var postalCode: String?
}

struct Person1 {
    var address: Address?
}

var human = Person1(address: Address(postalCode: "12345"))

if human.address?.postalCode == nil {
    print("Почтовый индекс не найден")
} else {
    print("Почтовый индекс: \(human.address?.postalCode ?? "")")
}
//2

class Toy {
    var name: String
    init(name: String) {
        self.name = name
    }
}
class Pet {
    var favoriteToy: Toy?
}
class Person {
    var pet: Pet?
}

let toy = Toy(name: "Ball")
let pet = Pet()
pet.favoriteToy = toy

let person = Person()
person.pet = pet

print(person.pet?.favoriteToy?.name)
if let toyName = person.pet?.favoriteToy?.name {
    print("любимая игрущка - \(toyName)")
} else { ("нет любимой игрушки")
}

struct Adress {
      
    var phoneNumber: String?
    
}
class Customer {
var deliveryAddresses: [Adress]?
}
class Order {
    var customer: Customer?
}

let address1 = Adress(phoneNumber: "8-800")
let address2 = Adress(phoneNumber: nil)

let customer = Customer()
customer.deliveryAddresses = [address1, address2]

let order = Order()
order.customer = customer
if let obj = order.customer?.deliveryAddresses?.first?.phoneNumber {
    print("phone of first number is \(obj)")
} else {
    print("number is not exists")
}
//

class Author {
    var birthdate: Date?
}

class Book {
      var author: Author?
}

let person1 = Book()

if let obj = person1.author?.birthdate {
    print("Birthdate is \(obj)")
} else {
    print("error")
}

let birthday = Date()
let author = Author()
author.birthdate = birthday

let book = Book()
book.author = author

if let obj = book.author?.birthdate {
    print("Birthday is \(obj)")
} else {
    print("error")
}
