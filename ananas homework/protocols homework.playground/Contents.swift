import UIKit

var greeting = "Hello, playground"

protocol Vehicle {
    var numberOfWheels: Int {get}
    var maxSpeed: Double {get}
    func startEngine() -> String
    func accelerate(to speed: Double)
}
class Car: Vehicle {
    var numberOfWheels: Int = 4
    
    var maxSpeed: Double = 100
    init(numberOfWheels: Int, maxSpeed: Double) {
        self.numberOfWheels = numberOfWheels
        self.maxSpeed = maxSpeed
    }
    func startEngine() -> String {
        var phrase = "Engine of vehicle is starts!!"
        print(phrase)
        return phrase
    }
    
    func accelerate(to speed: Double) {
        print("Vehicle accelerate with speed \(speed)!!!")
    }
    
    
}
class Motorcycle: Vehicle {
    var numberOfWheels: Int = 2
    
    var maxSpeed: Double = 100
    
    func startEngine() -> String {
        let phrase = "Engine of motorcycle is starts!!"
        print(phrase)
        return phrase

    }
    func accelerate(to speed: Double) {
        print("Motorcycle accelerate with speed \(speed)!!!")
    }
}
func describeVehicle(_ vehicle: Vehicle) {
    print(vehicle.maxSpeed, vehicle.numberOfWheels)
    vehicle.accelerate(to: 40.5)
    vehicle.startEngine()
}
let vehicle = Car(numberOfWheels: 4, maxSpeed: 100)
describeVehicle(vehicle)
//ckutarenko

protocol Food {
    var name: String {get}
    func taste()
}
class Orange: Food {
    var name: String = "Orange"
    func taste() {
        print("I am orange and i am delicious!")
    }
}
class Apple: Food {
    var name: String = "Apple"
    func taste() {
        print("I am apple and i am delicious!")
    }
}
var orange = Orange()
var apple = Apple()
var bag: [Food] = [orange, apple]
for obj in bag {
    print(obj.name)
    obj.taste()
}
//2
protocol Storable: Food {
    func daysToExpired()
}
class Cheese: Storable {
    var expired: Bool = false
    func daysToExpired() {
        if daysLeft - 100 <= 0 {
            expired = true
            print("Its expired! Lets throw away it!")
        } else {
            print("Thats good, take it in the fridge!")
        }
    }
    var daysLeft: Int = 40
    var name: String = "Cheese"
    func taste() {
        print("I am cheese and i am delicious!")
    }
}
class Meet: Storable {
    var expired: Bool = false
    func daysToExpired() {
        if daysLeft - 100 <= 0 {
            expired = true
            print("Its expired! Lets throw away it!")
        } else {
            print("Thats good, take it in the fridge!")
        }
    }
    var daysLeft: Int = 60
    var name: String = "Meet"
    func taste() {
        print("I am meet and i am delicious!")
    }
}

var meet = Meet()
var cheese = Cheese()

var refrigirator: [AnyObject] = [meet, cheese, apple, orange]
var newArray: [Storable] = []
for object in refrigirator {
    if object is Storable {
        newArray.append(object as! Storable)
    }

    }

var finalArray = newArray.sorted { a, b in
    a.name < b.name
}
for obj in finalArray {
    print(obj.name)
}
//claude

