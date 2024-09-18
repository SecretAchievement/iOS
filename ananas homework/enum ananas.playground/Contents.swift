import UIKit

var greeting = "Hello, playground"

enum Seasons {
    case winter
    case spring
    case summer
    case autumn
}

enum Seasons1 {
    case winter, spring
}

let summer = Seasons.summer
let winter: Seasons = Seasons.winter
let num: Int = 8


let season = Seasons.autumn

switch season {
case .autumn:
    print("autumn")
case .spring:
    print("spring")
case .summer:
    print("summer")
case .winter:
    print("winter")
}

enum Sides: CaseIterable {
    case left
    case right
    case up
    case down
}
let sidesCount = Sides.allCases.count
for side in Sides.allCases {
    print(side)
}

//ассоциативные значения
enum PaymentMethods {
    case creditCard(cardNumber: String, expiryDate: String, cvv: Int)
    case debitCard(cardNumber: String, expiryDate: String, cvv: Int)
    case paypal(email: String)
    case applePay(id: String)
}
let PaymentMethods1 = PaymentMethods.paypal(email: "ananas@mail.ru")
let PaymentMethods2 = PaymentMethods.applePay(id: "1212zbzbzbzbz")
let PaymentMethods3 = PaymentMethods.debitCard(cardNumber: "1212122121121212",
                                               expiryDate: "25.05.2025",
                                               cvv: 123)
switch PaymentMethods3 {
case .creditCard(let cardNumber, let expiryDate, let cvv):
    print("Credit Card: cardNumber: \(cardNumber) expiryDate: \(expiryDate) cvv: \(cvv)")
case .debitCard(let cardNumber, let expiryDate, let cvv):
    print("Debit Card: cardNumber: \(cardNumber) expiryDate: \(expiryDate) cvv: \(cvv)")
case .paypal(let email):
    print("")
case .applePay(let id):
    print("")
}
enum OrderStatus: String {
    case pending = "Заказ ожидаем обработки"
    case process = "Заказ в обработке"
    case shipped = "Заказ отправлен"
    case delivered = "Заказ доставлен"
    case canceled = "Заказ отменен"
}

let orderStatus = OrderStatus.delivered.rawValue

//enum OrderStatus1: Int {
//    case pending = 1
//    case process = 2
//    case shipped = 4
//    case delivered = 17
//    case canceled = 67
//}

OrderStatus.canceled.rawValue

enum OrderStatusNumber: Int {
    case pending
    case process
    case shipped
    case delivered
    case canceled
}
let number = OrderStatusNumber(rawValue: 3)

OrderStatusNumber.pending.rawValue
OrderStatusNumber.shipped.rawValue
OrderStatusNumber.delivered.rawValue

enum SidesNew: String {
    case left
    case right
    case up
    case down
}
SidesNew.left.rawValue
let side: SidesNew = SidesNew(rawValue: "right") ?? .left
 
//MARK: - Homework
//1
enum Fingers {
    case firstFinger
    case secondFinger
    case thirdFinger
    case fourthFinger
    case bigFinger
}
//2
enum WeekDays: CaseIterable { //Тип, предоставляющий коллекцию всех своих значений.
    case monday
    case tuesday
    case wensday
    case thursday
    case friday
    case saturday
    case sunday
}
let weekDaysCount = WeekDays.allCases.count
let firstCase = WeekDays.allCases.first
print(firstCase ?? "")
for index in WeekDays.allCases {
    print(index)
}
//3
enum Animals: String {
    case cat = "cat"
    case dog = "dog"
    case goat = "goat"
}
//4
enum Rainbow {
    case red(color: String, number: Int, isItWarm: Bool)
    case orange(color: String, number: Int, isItWarm: Bool)
    case yellow(color: String, number: Int, isItWarm: Bool)
    case green(color: String, number: Int, isItWarm: Bool)
    case lightblue(color: String, number: Int, isItWarm: Bool)
    case blue(color: String, number: Int, isItWarm: Bool)
    case purple(color: String, number: Int, isItWarm: Bool)
}
//4.1
let rainbow1 = Rainbow.blue(color: "blue", number: 6, isItWarm: false)
let rainbow2 = Rainbow.red(color: "red", number: 1, isItWarm: true)
let rainbow3 = Rainbow.yellow(color: "yellow", number: 3, isItWarm: true)
let rainbow4 = Rainbow.green(color: "green", number: 4, isItWarm: false)
//4.2
func myColorFunc (myColor: Rainbow, closure: (String, Bool) -> String) -> String {
    switch myColor {
    case .red(color: "red", number: 1, isItWarm: true):
        return "Red - every" + closure ("Red", true)
    
    case .orange(color: "orange", number: 2, isItWarm: true):
        return "Orange - hunter" + closure ("orange", true)
        
    case .yellow(color: "yellow", number: 3, isItWarm: true):
        return "Wants - yellow" + closure ("yellow", true)
        
    case .green(color: "green", number: 4, isItWarm: false):
        return "toKnow - green" + closure ("green", false)
        
    case .lightblue(color: "lightblue", number: 5, isItWarm: false):
        return "Where - lightBlue" + closure ("lightblue", false)
        
    case .blue(color: "blue", number: 6, isItWarm: false):
        return "toSit - blue" + closure ("blue", false)
        
    case .purple(color: "purple", number: 7, isItWarm: false):
        return "Purple - phazan" + closure ("purple", false)
    default:
       return ""
    }
}
print(myColorFunc(myColor: rainbow1) { (colorName, isWarm) in
    "\n\(colorName) - is a \(isWarm ? "warm" : "cold") color"
})
print(myColorFunc(myColor: rainbow2) { (colorName, isWarm) in
    "\n\(colorName) - is a \(isWarm ? "warm" : "cold") color"
})
print(myColorFunc(myColor: rainbow3) { (colorName, isWarm) in
    "\n\(colorName) - is a \(isWarm ? "warm" : "cold") color"
})
print(myColorFunc(myColor: rainbow4) { (colorName, isWarm) in
    "\n\(colorName) - is a \(isWarm ? "warm" : "cold") color"
})
//5
enum City {
    static let districts = 7
    static let streets = 153
    static let houses = 3478
} //не думаю, что нужно обращатсья к rawValue
City.districts
City.streets
City.houses
//6 Рекурсия — это метод программирования, при котором функция вызывает сама себя для решения задачи
func factorial(_ n: Int) -> Int {
    if n <= 1 {
        return 1 // обычный случай
    } else {
        return n * factorial(n - 1) // рекурсия
    }
}
// enum - это value type, но перечисление может содержать ассоциативные значения ссылочного типа, например, объекты классов, которые являются ссылочным типом (reference type). Это не делает само перечисление ссылочным типом, но позволяет хранить внутри него данные ссылочного типа

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west
directionToHead = .east

directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}
// Выводит "Watch out for penguins"

//gptHomework

enum Direction:String {
    case north
    case south
    case east
    case west
}
func move(param: Direction) {
    print("Moving \(param.rawValue)")
}
move(param: .north)
//2
enum Operation {
    case addition (Int, Int)
    case subtraction (Int, Int)
    case multiplication (Int, Int)
    case division (Int, Int)
}
func performOperation (param: Operation) -> Int? {
    switch param {
    case .addition(let x, let y):
        return x + y
    case .subtraction(let x, let y):
        return x - y
    case .multiplication(let x, let y):
        return x * y
    case .division(let x, let y):
        return y != 0 ? x / y : nil
    }
}
let operation = Operation.addition(3, 5)
if let result = performOperation(param: operation) {
    print("Result: \(result)")
} else {
    print("error")
}
//3
enum Month: Int {
    case january = 1
    case february = 2
    case march = 3
    case april = 4
    case may = 5
    case june = 6
    case july = 7
    case august = 8
    case september = 9
    case october = 10
    case november = 11
    case december = 12
}
func daysInMonth(param: Month) -> Int {
    switch param {
    case .january:
        return 31
    case .february:
        return 28
    case .march:
        return 31
    case .april:
        return 30
    case .may:
        return 31
    case .june:
        return 30
    case .july:
        return 31
    case .august:
        return 31
    case .september:
        return 30
    case .october:
        return 31
    case .november:
        return 30
    case .december:
        return 31
    }
}
let month = Month.february
daysInMonth(param: month)
enum TrafficLight {
    case red
    case yellow
    case green
    func next () -> Self {
        switch self {
        case .red:
            return .yellow
        case .yellow:
            return .green
        case .green:
            return .red
        }
    }
}
var light = TrafficLight.red
light = light.next()
light = light.next()

enum WeatherCondition {
    case sunny
    case cloudy
    case rainy
    case stormy
    case snowy
}
func dressForWeather (param: WeatherCondition) {
    switch param {
    case .sunny:
        print("Wear a t shirt")
    case .cloudy:
        print("Wear a sweater")
    case .rainy:
        print("Take an umbrella")
    case .stormy:
        print("Don't come out from home")
    case .snowy:
        print("Wear a warm coat and boots.")
    }
}


struct TimesTable {
    
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier + index
    }
    
}
let example = TimesTable(multiplier: 4)
example[8]

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }

    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns }
    
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}
