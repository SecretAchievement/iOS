import UIKit

var greeting = "Hello, playground"

/* enum ИмяПеречисления {
      список через case
} */

enum TravelClass {
    case First, Buisness, Economy
}
let travel = TravelClass.First

//---------------Игра---------------
enum Medal {
    case gold
    case silver
    case bronze
}

let medal = Medal.gold
switch medal {
case .gold:
    print("your medal is gold")
case .silver:
    print("your medal is silver")
case .bronze:
    print("your medal is bronze")
//default: break
}
//------------week days-------------------

enum DayWeek {
    case monday
    case tuesday
    case wendsday
    case thursday
    enum friday {
        case day
        case night
    }
    case saturday
    case sunday
}
var friday = DayWeek.friday.day
//-----------------my type---------------
enum Operation {
    case double(Double)
    case integer(Int)
    case float(Float)
    case string(String)
    
}

var dictionary: Dictionary<String, Operation> = [
    "Double" : Operation.double(22.4),
    "Integer" : Operation.integer(10),
    "Float" : Operation.float(44.1),
    "String": Operation.string("string")
]
let pr = dictionary["String"]
print(pr!)
//HOMEWORK

//3) Создайте по 1-2 enum разных типов.
//raw values
enum Flagman: String {
    case Samsung = "Galaxy S9"
    case Apple = "iPhone X"
    case Microsoft = "Lumia 950"
    case Google = "Pixel 2"
}
//associated values
enum Person {
    case Human(String, Int)
    case Elf(String)
}
//4. Создайте несколько своих enum, названия какие хотите: например, анкета сотрудника - пол, возраст, ФИО, стаж. Используйте switch как в видео

enum Worker {
    case sex
    case age
    case name
    case workAge
}
let worker = Worker.workAge
switch worker {
case .sex:
    print("W")
case .age:
    print("36")
case .name:
    print("Oksana")
case .workAge:
    print("4")
}
print(worker)

enum Water {
    case name
    case colour
    case taste
}

let water = Water.taste
switch water {
case .name:
    print("Fanta")
case .colour:
    print("Yellow")
case .taste:
    print("Orange")
}
print(water)
//5) Создать enum со всеми цветами радуги. Создать функцию, которая содержит названия разных предметов или объектов.
//Пример результата в консоли "apple green", "sun red" и т.д.

enum Rainbow {
    case red
    case orange
    case yellow
    case green
    case blue
    case purple
}
var subject = ["Car", "Fanta", "Snow", "Apple", "Sky", "Bag"]

func colourFunc (col: Rainbow) {
    switch col {
    case .red:
        print("Red \(subject[0])")
    case .orange:
        print("orange \(subject[1])")
    case .yellow:
        print("yellow \(subject[2])")
    case .green:
        print("green \(subject[3])")
    case .blue:
        print("blue \(subject[4])")
    case .purple:
        print("purple \(subject[5])")
        
    }
}
colourFunc(col: Rainbow.red)
//6) Создать функцию, которая выставляет оценки ученикам в школе.

enum Grades {
    case two
    case three
    case four
    case five
}
var pupils = ["Vasya", "Petya", "Vanya", "Sasha"]
func gradeFunc (grade: Grades) {
    switch grade {
    case .two:
        print("Two \(pupils[0])")
    case .three:
        print("Two \(pupils[1])")
    case .four:
        print("Two \(pupils[2])")
    case .five:
        print("Two \(pupils[3])")
    }
}
gradeFunc(grade: Grades.two)

//7) Создать программу, которая "рассказывает" - какие автомобили стоят в гараже.
enum Automobiles {
    case audi
    case bmw
}

func autoGarage (auto: Automobiles) {
    switch auto {
    case .audi:
        print("Audi in garage!")
    case .bmw:
        print("Bmw in garage!")
    }
}

autoGarage(auto: Automobiles.audi)
//----------------------CHATGPT----------------------------
import Foundation

// Определяем перечисление для типов автомобилей
enum CarType: String {
    case sedan = "Sedan"
    case suv = "SUV"
    case truck = "Truck"
    case coupe = "Coupe"
    case convertible = "Convertible"
}

// Структура для представления автомобиля
struct Car {
    let make: String
    let model: String
    let year: Int
    let type: CarType
    
    func description() -> String {
        return "\(year) \(make) \(model) (\(type.rawValue))"
    }
}

// Класс для управления гаражом
class Garage {
    private var cars: [Car] = []
    
    func addCar(_ car: Car) {
        cars.append(car)
    }
    
    func listCars() -> String {
        guard !cars.isEmpty else {
            return "В гараже нет автомобилей."
        }
        
        var result = "Автомобили в гараже:\n"
        for car in cars {
            result += car.description() + "\n"
        }
        return result
    }
}

// Пример использования
let garage = Garage()

// Добавляем автомобили в гараж
garage.addCar(Car(make: "Toyota", model: "Camry", year: 2020, type: .sedan))
garage.addCar(Car(make: "Ford", model: "F-150", year: 2018, type: .truck))
garage.addCar(Car(make: "BMW", model: "X5", year: 2021, type: .suv))

// Печатаем список автомобилей в гараже
print(garage.listCars())
