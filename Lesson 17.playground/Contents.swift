import UIKit

var greeting = "Hello, playground"

//automatic reference counting = ARC

class Person {
    var name = String()
    init(name: String = String()) {
        self.name = name
        print("\(name) инициализирован и создан в память")
    }
    deinit {
        print("\(name) удален из памяти")
    }
}
var ref1: Person?
var ref2: Person?
var ref3: Person?

ref1 = Person(name: "Jack")
ref2 = ref1
ref3 = ref1
ref1 = nil
ref2 = nil
ref3 = nil
//--------------------------------Цикл сильных ссылок или перекрестные ссылки

class Hotel {
    let name: String
    init(name: String) {
        self.name = name
    }
        var apartament: Apartaments?
    deinit {
        print("\(name) выезжает")
    }
}
class Apartaments {
    let room: String
    init(room: String) {
        self.room = room
    }
    weak var hotel: Hotel?
    deinit {
        print("Апартаменты \(room) освобождаются")
    }
}

var objHotel: Hotel?
var objApartament: Apartaments?

objHotel = Hotel(name: "John Smith")
objApartament = Apartaments(room: "122")

objHotel!.apartament = objApartament
objApartament!.hotel = objHotel

objHotel = nil
objApartament = nil
//-------------------------------бесхозная ссылка----------------unowned

class Country {
    let name: String
    var capitalCity: City!
    init(name: String, capitalName: String) {
        self.name = name
        self.capitalCity = City(name: capitalName, country: self)
    }
}
class City {
    let name: String
    unowned let country: Country
    
    init(name: String, country: Country) {
        self.name = name
        self.country = country
    }
}
var country = Country(name: "Russia", capitalName: "Moscow")
print("Capital of country: \(country.name) is \(country.capitalCity.name)")

//HOMEWORK

/*
 2 . Описать несколько структур – любой легковой автомобиль и любой грузовик.
 3. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли
 двигатель, открыты ли окна, заполненный объем багажника.
 4. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить
 двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного
 объема.
 5. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять
 свойства структуры в зависимости от действия.
 6. Инициализировать несколько экземпляров структур. Применить к ним различные действия.
 7. Положить объекты структур в словарь как ключи! а их названия как строки например
 var dict = [structCar: "structCar"]
 */



//class Car3 {
//    var colour: String
//    init(colour: String) {
//        self.colour = colour
//        print("\(colour) initiated")
//    }
//    deinit {
//        print("Car is deinitiated")
//    }
//    var vendor = String()
//    var releaseYear = Int()
//    var trunkSize = Int()
//    var engineWork = String()
//    var openWindows = String()
//    var howFullTrunkIs = Int()
//}
enum CarAction {
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
    case loadCargo(volume: Double)
    case unloadCargo(volume: Double)
    case loadTruckBed(volume: Double)
    case unloadTruckBed(volume: Double)
}

struct Car {
    var brand = String()
    var releaseYear = Int()
    var trunkSize = Int()
    var engineWork = Bool()
    var openWindows = Bool()
    var howFullTrunkIs = Int()
    init(brand: String = String(), releaseYear: Int = Int(), trunkSize: Int = Int(), engineWork: Bool = Bool(), openWindows: Bool = Bool(), howFullTrunkIs: Int = Int()) {
        self.brand = brand
        self.releaseYear = releaseYear
        self.trunkSize = trunkSize
        self.engineWork = engineWork
        self.openWindows = openWindows
        self.howFullTrunkIs = howFullTrunkIs
    }
    
    mutating func doAction (action: CarAction) {
        switch action {
        case .startEngine:
            engineWork = true
            print("Engine of \(brand) is running")
        case .stopEngine:
            engineWork = false
            print("Engine of \(brand) is stop")
        case .openWindows:
            openWindows = true
            print("Windows of \(brand) is opened")
        case .closeWindows:
            openWindows = false
            print("Windows of \(brand) is closed")
        case .loadCargo(volume: let volume):
            if trunkSize < 10 {
                print("Trunk is not loaded  ")
            }
        case .unloadCargo(volume: let volume):
            if trunkSize > 10 {
                print("Trunk is loaded  ")
            }
        case .loadTruckBed(volume: let volume):
            if howFullTrunkIs >= 100 {
                print("Gasoline of \(brand) is full")
            }
        case .unloadTruckBed(volume: let volume):
            if howFullTrunkIs < 100 {
                print("Gasoline of \(brand) is not full")
            }
        }
    }
}

var myCar  = Car(brand: "Toyota", releaseYear: 1963, trunkSize: 23, engineWork: true, openWindows: false, howFullTrunkIs: 100)
var myCar2  = Car(brand: "Volga", releaseYear: 1953, trunkSize: 43, engineWork: true, openWindows: false, howFullTrunkIs: 100)
myCar.doAction(action: .startEngine)
myCar.doAction(action: .loadTruckBed(volume: 56))
//var myDictionary: [Car: String] = [:]

//myDictionary[myCar] = myCar.brand
//var dict = [myCar: "232"]
//9. Набрать код который на белом скрине понять в чем там проблема и решить эту проблему

class Man {
    var passport: Passport?
    deinit {
        print("Man deleted from memory")
    }
}
class Passport {
    unowned let man: Man
    
    init(man: Man) {
        self.man = man
    }
    
    deinit {
        print("Passport deleted from memory")
    }
}

var man: Man? = Man()
var passport: Passport? = Passport(man: man!)
man?.passport = passport

passport = nil
man = nil
