import UIKit

var greeting = "Hello, playground"

protocol Vehicle {
    var name: String {get}
    var maxSpeed: Double {get}
    func start()
    func stop()
}
protocol Electric {
    var batteryLevel: Int {get}
    func charge()
}
class Car: Vehicle {
    var name: String
    
    var maxSpeed: Double
    
    func start() {
        print("Car is started!")
    }
    
    func stop() {
        print("Car is stopped!")
    }
    init(name: String, maxSpeed: Double) {
        self.name = name
        self.maxSpeed = maxSpeed
    }
}
class ElectricBike: Vehicle, Electric {
    var name: String
    
    var maxSpeed: Double
    
    func start() {
        print("ElectricBike is started!")

    }
    
    func stop() {
        print("ElectricBike is stopped!")

    }
    
    var batteryLevel: Int
    
    func charge() {
        print("ElectricBike is charging!")
    }
    init(name: String, maxSpeed: Double, batteryLevel: Int) {
        self.name = name
        self.maxSpeed = maxSpeed
        self.batteryLevel = batteryLevel
    }
}
extension Electric {
    func describeSelf() {
        print("Current battery level: \(batteryLevel)%")
    }
}

extension Vehicle {
    func describeSelf() {
        print("This is \(name), his max speed is \(maxSpeed)")
    }
}

func printVehicleInfo(myArray: [Vehicle]) {
    for obj in myArray {
        obj.describeSelf()
    }
}

let car = Car(name: "Sedan", maxSpeed: 180)
 let bike = ElectricBike(name: "E-Bike", maxSpeed: 25, batteryLevel: 80)

 let vehicles: [Vehicle] = [car, bike]
printVehicleInfo(myArray: vehicles)
