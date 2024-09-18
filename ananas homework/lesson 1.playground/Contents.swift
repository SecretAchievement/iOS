import UIKit

var greeting = "Hello, playground"

//let
//var
//let name = "Natasha"
//var age = 25
//print(age)




//HOMEWORK 1
//
//MARK: 1
///это константа про возраст
let myAge = 100
///этак константа про имя
let myName = "Jack"
///это булевая константа
let myBool = true

var myGrade = 8
var myAnimal = "Cat"
var myPlant = "Rose"
//MARK: 2
print("\(myAge), \(myName), \(myBool), \(myGrade), \(myAnimal), \(myPlant)")
//MARK: 3
myGrade = 200
myAnimal = "Cow"
myPlant = myName
//MARK: 4 - я не могу присвоить константе новое значение, потому что это константа. Чтобы присвоить ей другое значение - нужно преобразовать ее в переменную

//MARK: 5 - оформил каждый пункт ДЗ с MARK

//MARK: 6 описание добавил


//HOMEWORK 2

//1.1
let name: String = "Jack"
let age: Int = 100
let ageDouble: Double = 100.2222222222222222
let areYouProgrammer: Bool = true

//1.2
var secondName = "John"
var secondAge = 200
var secondDouble = 200.3333333333333333333
var areYouProgrammerAgain = true
//2
var isOpen: Bool = true
var isClosed: Bool = false
var isOn = true
//3
var firstFloat: Float = 4.232323; var secondFloat: Float = 43.232; var thirdFloat: Float = 5.2332; var fourthFloat: Float = 3343.223
//4
var sumFloat: Float = firstFloat + secondFloat + thirdFloat + fourthFloat + Float(age) + Float(ageDouble)
print(sumFloat)
//5
let anotherFloat: Float = 1.0123456
//как видно - float округлился до шестого знака, превратившись в 1.012346
//6
print(UInt.max)
print(Int.max)
//для инта выделено определенное количество памяти - UInt использует эту память только на положительные значения инта, в то время, как Int использует ту же память, но в обе стороны - в положительную и отрицательную. Поэтому значение максимумов uint и int отличаются ровно в два раза.
//7
//не были упомянуты такие типы как Character, Array, Set, Dictionary, Tuple, опциональный тип, диапазон range, пустой тип void, never, который никогда не возвращает значение, а также Any и AnyObject (предоставление любого типа)

//HOMEWORK 3
//1
var string: String? = ""
var character: Character? = "a"
var integer: Int? = 0
var double: Double? = 4.22224442320949249
var float: Float? = 5.222
var bool: Bool? = nil
//2
let stringAgain = String()
// ""
let characterAgain = Character("a")
// не хочет создаваться без значения, добавил а
let integerAgain = Int()
//0
let doubleAgain = Double()
//0
let floatAgain = Float()
//0
let boolAgain = Bool()
//false
//3
var firstOptional: Bool? = true
var secondOptional: Bool? = false
var thirdOptional: Bool? = nil
//3.1
firstOptional!
print(firstOptional!)
//3.2
if let myOptional = secondOptional {
    print("UNWRAPED, \(myOptional)")
} else {
    print("NOT UNWRAPED")
}
//3.3
let optionalBool = thirdOptional ?? true
print(optionalBool)
//ошибок не видно
//4.1 унарные префиксные
let isTrue = !false
let negativeNumber = -2
//4.2 унарные постфиксные
let postInt: Int? = 4
postInt!
//4.3 бинарные
let sum = 2 + 4
let divide = 8 / 2
//4.4 тернарные
let ternInt = 3
let isItThree = ternInt == 3 ? "Thats three!" : "Not three!"
