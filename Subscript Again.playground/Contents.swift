import UIKit

var greeting = "Hello, playground"

struct Matrix {
    var data: [[Int]]
    subscript(row: Int, column: Int) -> Int {
        get {
            return data[row][column]
        }
        set {
            data[row][column] = newValue
        }
    }
}

var matrix = Matrix(data: [[1, 2], [3, 4]])
let value = matrix[0, 1]  // Чтение значения
matrix[1, 0] = 5  // Запись значения

 /*
  
  class nameClass {
  subscript (index: index_type) -> return typr {
  get {
  return value
  }
  set {
  записать имя значения по  индексу
  }
  
  }
  */
var dic = ["key":"value"]
dic["key"]
dic["mama"] = "valya"
var array = ["mama", "papa"]
array[1]

struct Table {
    var multi: Int
    subscript (index: Int) -> Int {
        get {
            return multi * index
        }
    }
    
}
var tableResult = Table(multi: 3)
tableResult[10]


struct Man {
    var man1 = "m1 hello"
    var man2 = "m2 i am good"
    var man3 = "m3 hi"
    subscript(i: Int) -> String? {
        get {
            switch i {
            case 0: return man1
            case 1: return man2
            case 2: return man3
            default: return ""
            }
        }
        set {
            let value = newValue ?? ""

            switch i {
            case 0: return man1 = value
            case 1: return man2 = value
            case 2: return man3 = value
            default: break
            }
        }
    }
}
var say = Man()
say[1]
say[0] = "Hi Bob"
say.man1
//HOMEWORK

//3. Создать клас в котором будет 3 проперти мама Папа и дети . Создать sabscript и упорядочить их по индексу.
class structClass {
    var mother = "Lena"
    var father = "Igor"
    var children = "Petya and Vanya"
    subscript (i: Int) -> String {
        get {
            switch i {
            case 0: return mother
            case 1: return father
            case 2: return children
            default: return ""
            }
        }
    }
}
var member = structClass()
member[0]
//4. Создать Индекс который будет принимать число умножать его на 100 и делить на 2.

struct calculateClass {
    var number: Int
    subscript (i: Int) -> Int {
        get {
            return i * 100 / 2
        }
    }
}
var digit = calculateClass(number: 44)
digit[4]
//5.Создать свой subscript у которого внутри есть оператор if else.

struct ifelse {
    var number: Int
    subscript (i: Int) -> Int {
        get {
            if i < 100 {
                i * 234
            } else {
                i / 4
            }
        }
    }
}
var digit1 = ifelse(number: 2)
digit1[100]
//6. Создать класс человек и в нем 3 проперти имя , возраст пол .
class Men {
    var name: String
    var sex: String
    subscript (age: Int) -> String {
        return ""
    }
    init(name: String, sex: String) {
        self.name = name
        self.sex = sex
    }
}

class Woman: Men {
    override subscript(age: Int) -> String {
        switch age {
        case 0...30: return "Young"
        case 30...100: return "not young"
        default: "wtf?"
        }
        return ""
    }
}


class Mujik: Men {
}
var testWoman = Woman(name: "Oksana", sex: "Female")
testWoman[31]
