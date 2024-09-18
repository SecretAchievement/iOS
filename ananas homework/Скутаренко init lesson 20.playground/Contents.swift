import UIKit

var greeting = "Hello, playground"

class Human {
    var weight: Int
    var age: Int
    init(weight: Int, age: Int) {
        self.weight = weight
        self.age = age
    }
    convenience init(age: Int) {
        self.init(weight: 0, age: age)
    }
    convenience init(weight: Int) {
        self.init(weight: weight, age: 0)
    }
    convenience init() {
        self.init(weight: 0)
    }
    func test() {}
}
let h1 = Human(weight: 70, age: 25)
let h2 = Human(weight: 0, age: 25)
let h3 = Human()

class Student: Human {
    var firstName: String
    var lastName: String
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
        super.init(weight: 0, age: 0)
        self.weight = 50
        test()
    }
    
    override init(weight: Int, age: Int) {
        self.firstName = ""
        self.lastName = ""
        super.init(weight: weight, age: age)
    }
    convenience init(firstName: String) {
        
        self.init(firstName: firstName, lastName: "")
        self.age =  28
        test()
    }
}

class Doctor: Student {
    var fieldOfStudy: String
     init(fieldOfStudy: String) {
        self.fieldOfStudy = fieldOfStudy
        super.init(firstName: "Doctor", lastName: "House")
    }
    override init(firstName: String, lastName: String) {
        self.fieldOfStudy = "Healt"
        super.init(firstName: firstName, lastName: lastName)
    }
    }
}

let s1 = Stu

let d1 = Doctor(firstName: "aaa")
let d2 = Doctor(fieldOfStudy: <#T##String#>
