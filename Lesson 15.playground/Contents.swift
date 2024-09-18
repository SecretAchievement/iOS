import UIKit

var greeting = "Hello, playground"
//subscript or index

/*
 class ClassName {
 subscript(index: index_type) -> returning type {

 get  {
         возвратить значение и только чтение
 }
      set {
             записать имя значения по индексу
 }
     }
 }
 */

var dictionary = ["key": "value"]

dictionary["key"]
dictionary["mama"] = "Valya"
var array = ["mom", "tad"]
array[0]

struct Table {
    var multi: Int
    subscript(index: Int) -> Int {
        get {
            return multi * index
        }
    }
}

var tableResult = Table(multi: 34)
tableResult[10]

struct TestString {
    var phrase =  String()
    subscript(index1: Int) -> String {
        get {
            return "\(phrase) and \(index1 * 88)"
        }
    }
}
var testResult = TestString(phrase: "yo")
tableResult[322]






//---------------------------------------------

struct Men {
    var men1 = "men1: hello"
    var men2 = "men2: Im good"
    var men3 = "men3: hi"
    
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return men1
            case 1: return men2
            case 2: return men3
            default: return ""
            }
        }
        set {
            
            let value = newValue ?? ""
            
            switch index {
            case 0: return men1 = value
            case 1: return men2 = value
            case 2: return men3 = value
            default: break
            }
        }
    }
    
}
var say = Men()
say[0] = "Hi Bob"
say.men1
//------------------------GIRLS SUBSCRIPT----------------------------------

struct Girls {
    var girl1 = "Im Britney"
    var girl2 = "Im Daria"
    var girl3 = "Im Jane"
    subscript(index: Int) -> String? {
        get {
            switch index {
            case 0: return girl1
            case 1: return girl2
            case 2: return girl3
            default: return ""
            }
        }
        
        set {
            let value = newValue ?? ""
            
            switch index {
            case 0: return girl1 = value
            case 1: return girl2 = value
            case 2: return girl3 = value
            default: break
            }
           }
          }
         }

var myGirl = Girls()
myGirl[0] = "Im Steffany"
myGirl.girl2
//1. Повторите что было в уроке самостоятельно по памяти.
struct Employers {
    var employer1 = "Im Jack"
    var employer2 = "Im John"
    var employer3 = "Im Zak"
    subscript (index: Int) -> String? {
        get {
            switch index {
            case 0: return employer1
            case 1: return employer2
            case 2: return employer3
            default: return ""
            }
        }
        set {
            let value = newValue ?? ""
            switch index {
            case 0: return employer1 = value
            case 1: return employer2 = value
            case 2: return employer3 = value
            default: break
            }
        }
    }
}

var guy =  Employers()
guy[0] = "Im Frank"
guy.employer1
guy.employer2
guy.employer3
//2. Зайти в документацию и проработать и разобрать все примеры на эту тему.


//subscript(index: Int) -> Int {
   //возвращает надлежащее значение скрипта
//}

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let threeTimesTable = TimesTable(multiplier: 3)
print("шесть умножить на три будет \(threeTimesTable[6])")
// Выведет "шесть умножить на три будет 18"

struct divideTable {
    let divider: Double
    subscript (index: Double) -> Double {
        return index / divider
    }
}
let divideNumber = divideTable(divider: 44.2323)
print("divide all of this \(divideNumber[2342])")
var numberOfLegs = ["паук": 8, "муравей": 6, "кошка": 4]
numberOfLegs["птичка"] = 2
print(numberOfLegs)
//Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.

class Family {
    var mother = "Jane"
    var father = "Trent"
    var childs = "Daria"
    
    subscript (index: Int) -> String {
        get {
            switch index {
            case 0: return mother
            case 1: return father
            case 2: return childs
            default: return ""
            }
        }
    }
}
var member = Family()
    member[0]
member.mother
//4. Создать Индекс который будет принимать число умножать его на 100 и делить на 2.


struct mathOperations {
    //let digit: Int
    subscript (index: Int) -> Int {
        return index * 100 / 2
    }
}

var digit = mathOperations()
digit[83]
digit.self
//5.Создать свой subscript у которого внутри есть оператор if else.

struct myMath {
    subscript (index: Int) -> Int {
        if index > 15{
            return index * 10
        } else {
            return index * 2
        }
    }
}
var digit1 = myMath()
digit1[2342]
digit1[2]
//6. Создать класс человек и в нем 3 проперти имя , возраст пол .


//7. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства .
//class Oksana: Person {
//    override func voice() {
//        print("My name os Oksana!")
//        
//    }
//    override var sex: String {
//        didSet {
//            sex = "Female"
//        }
//    }
//    override var name: String {
//        didSet {
//            name = "Oksana"
//        }
//    }
//     override var age: Int {
//        didSet {
//            age = 16
//        }
//    }
//}
//class Igor: Person {
//    override func voice() {
//        print("My name os Igor!")
//    }
//    override var sex: String {
//        didSet {
//            sex = "Male"
//        }
//    }
//    override var name: String {
//        didSet {
//            name = "Igor"
//        }
//    }
//     override var age: Int {
//        didSet {
//            age = 15
//        }
//    }
//}
//var girl = Oksana()
//print(girl.voice())
//7. Создать ещё 2 класса которые наследуються от класса человек и переопределить методы и свойства

class Person {
    var name = String()
    var sex = String()
    var age = Int()
    init(name: String = String(), sex: String = String(), age: Int = Int()) {
        self.name = name
        self.sex = sex
        self.age = age
    }
    func voice() {
        print("I am a Human!")
    }
}

class Oksana: Person {
    override init(name: String = String(), sex: String = String(), age: Int = Int()) {
        super.init(name: "Oksana", sex: "Female", age: 26)
    }
    override func voice() {
        print("My name os Oksana!")
    }
}
class Igor: Person {
    override init(name: String = String(), sex: String = String(), age: Int = Int()) {
        super.init(name: "Igor", sex: "Male", age: 46)
    }
    override func voice() {
        print("My name is Igor!")
    }
}
var girl1 = Oksana()
print(girl1.voice())
girl1.voice()
var boy1 = Igor()
boy1.name
var men1 = Person()
men1.voice()
//8. Создать дикшинари который хранит все типы данных которые есть а ключ должен быть только строка
//( воспользоваться enum для типов данных)


enum DataType {
    case intValue(Int)
    case doubleValue(Double)
    case stringValue(String)
    case boolValue(Bool)
    case arrayValue([Any])
    case dictionaryValue([String: Any])
    case none
    }
var myDictionary : Dictionary<String, DataType> = [
    "String" : DataType.stringValue("String"),
    "Integer" : DataType.intValue(234345),
    "Double" : DataType.doubleValue(3242.23),
    "Bool" : DataType.boolValue(true)
]
var myType = myDictionary["Integer"]
