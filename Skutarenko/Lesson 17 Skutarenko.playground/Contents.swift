import UIKit

var greeting = "Hello, playground"

let array = ["a", "b", "c"]
array[0]
array[1]
array[2]

struct Family {
    var father = "Father"
    var mother = "Mother"
    var kids = ["kid1", "kid2", "kid3"]
    var count: Int {
        
        return 2 + kids.count
        
    }
    subscript(index: Int) -> String? {
        get {
            switch(index) {
            case 0: return father
            case 1: return mother
            case 2..<(2 + kids.count): return kids[index - 2]
            default: return nil
                
            }
        }
        set {
            let value = newValue ?? ""
            switch(index) {
            case 0: return father = value
            case 1: return mother = value
            case 2..<(2 + kids.count):  kids[index - 2] = value
            default: break
            }
        }
    }
    subscript(index: Int, suffix: String) -> String? {
        var name = self[index] ?? ""
        name += " " + suffix
        return name
    }
}
var family = Family()
family.father
family.mother
family.kids[0]
family.count
family[0]
family[1]
family[2]
family[0] = "Daddy"
family[3] = "Buddy"
family.kids[1]
family[3, "the great"]
struct Field {
    var dict = [String: String]()
    func keyForColumn(column: String, andRow row: Int) -> String {
        return column + String(row) + "a"
    }
    subscript(column: String, row: Int) -> String? {
        get {
            return dict[keyForColumn(column: column, andRow: row)]
        }
        set {
            dict[column + String(row)] = newValue
        }
    }
}

var field = Field()
field["a", 5]
field["a", 5] = "X"
field["a", 5]
//GPT HOMEWORK


class MyGrid {
    
    var myGrid: [String: String] = [:]
    
    subscript (key: String) -> String? {
        get {
            return myGrid[key]
        }
        set {
            myGrid[key] = newValue
        }
    }
}

var grid1 = MyGrid()
grid1["A1"] = "X"
print(grid1["A1"] ?? "")

struct SimpleArray {
   private var myArray = [Int]()
    init(size: Int) {
        myArray = Array(repeating: 0, count: size)
    }
    subscript(index: Int) -> Int? {
        get {
            guard index >= 0 && index < myArray.count else {
                return nil
            }
            return myArray[index]
        }
        set {
            guard index >= 0 && index < myArray.count else {
                return
            }
            if let newValue = newValue {
                myArray[index] = newValue
            }
        }
    }
}
var array1 = SimpleArray(size: 5)
array1[2] = 10
print(array1[2] ?? "invalid")
print(array1[15] ?? "invalid")



struct Matrix {
    var rows: Int
    var columns: Int
    var grid: [Double]
    
    subscript(row: Int, column: Int) -> Double {
        
        get {
            return grid[(row * columns) + column]
        }
        set {
            grid[(row * columns) + column] = newValue
        }
    }
}
var matrix = Matrix(rows: 2, columns: 2, grid: [1.0, 2.0, 3.0, 4.0])
print(matrix[0, 1])

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}
let sixTimesTable = TimesTable(multiplier: 6)
print(sixTimesTable[3])

struct PhoneBook {
    var dictionary: [String:String] = [:]
    
    mutating func addContact(name: String, phoneNumber: String) {
        dictionary[name] = phoneNumber
    }
    
    subscript (index: String) -> String? {
        return dictionary[index]
        }
    }
var book1 = PhoneBook()
book1.addContact(name:"Bob", phoneNumber: "3355")
if let bobNumber = book1["Bob"] {
    print("Bobs number is \(bobNumber)")
} else {
    print("error")
}

struct TemperatureConverter {
    //var temperature: Double
    
    subscript (temperature: Double, scale: String) -> Double {
        switch scale {
        case "C":
            return (temperature * 9 / 5) + 32
        case "F":
            return (temperature - 32) * 5 / 9
        default: 
            return -1

        }
    }
}

let example1 = TemperatureConverter()
let tempInFahrenheit = example1[25, "C"]
