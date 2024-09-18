import UIKit

var greeting = "Hello, playground"


//Property

/*  Свойства - это значения, связанные с классом или его экземпляром.
1) Если свойство связано с экземпляром класса, то они называются свойствами экземпляра класса.
2) А если с самим классом, то свойствами типа

Свойства делятся на два типа:
1. Сохраняемые свойства - story properties
2. Вычисляемые свойства - computer properties
*/
//------------------------story properties----------------------

struct Observer {
    
    var name: String {
        willSet {
            print("Warning! Value wants to cahnge on" + " = " + newValue)
        }
        didSet {
            print("didSet" + " = " + oldValue)
            
            if name != "" {
                name = name.capitalized
            }
        }
    }
}

var obser = Observer(name: "Jack")
obser.name //getter
obser.name = "ivAn" //setter
print(obser.name)
//------------------------computer properties----------------------

struct ComputerProperty {
    
    var firstName: String {
        didSet {
            if firstName != "" {
                firstName = firstName.capitalized
            }
        }
    }
    var lastName: String
    
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
            print("Setter is Work" + " " + newValue)
        }
    }
}

var compProp = ComputerProperty(firstName: "Kuky", lastName: "Smith")
compProp.fullName = "fdgxfgd" //not saving
compProp.fullName

print(compProp.fullName)
compProp.firstName = "JaCk"
print(compProp.fullName)
//-----------------property type-------------

var str = "Property type"


let MaxLength = 15

struct MyStruct {
    static var count = 0
    var name = String() {
        didSet {
            if name.count > MaxLength {
                name = oldValue
            }
        }
    }
    
    init(name: String) {
        self.name = name
        MyStruct.count += 1
    }
    
}

var struct1 = MyStruct(name: "Ivan")
struct1.name = "dsffdfdjhgvhgjvjghvhjg"
print(struct1.name)
var struct2 = MyStruct(name: "Max")
var struct3 = MyStruct(name: "Nikolay")
var struct4 = MyStruct(name: "Ivan")
print(MyStruct.count)

class AgeBoy {
    static var maxAge = 8
    
    lazy var say = "I am Good"
    
    var name = String(){
        didSet {
            if name.count > MaxLength {
                name = oldValue
            }
        }
    }
    var age = 8 {
        didSet{
            if age > AgeBoy.maxAge {
                age = oldValue
                print("please enter from 6 to 8 years")
            }
        }
    }
}

var ageClass = AgeBoy()
ageClass.name = "Ivan"
ageClass.age = 8



/*
 
 2. Создать класс "IOSStudents",добавить ему property: dateOfBirth, skills. Для тренировки.
 Создавайте свои структуры с разными видами свойств: сохраняемые/не сохраняемые, вычисляемые, свойства типа и т.д.
 
 

class iOSStudents {
    var dateOfBirth = Int()
    var skills = String()
}

struct
*/

ageClass.say
class iOSStudents {
    var dateOfBirth: Int
    var skills: String
    init(dateOfBirth: Int, skills: String) {
        self.dateOfBirth = dateOfBirth
        self.skills = skills
    }
    func describeStudent() -> String {
        return "date of Birth of student = \(dateOfBirth) and his skills  = \(skills)"
    }
}
//добавлю экземпляр класса
let student1 = iOSStudents(dateOfBirth: 23031992, skills: "Invisible")
print(student1.describeStudent())
//структура с несохраняемымb (computed) свойствами
struct Rectangle {
    var width: Double
    var height: Double
    
    var area: Double {
        return 2 * (width * height)
    }
    var perimeter: Double {
        return 2 * (width + height)
    }
}
let myRectangle = Rectangle(width: 23.22, height: 243.23)
print(myRectangle.area)

/*
 3. Написать структуру "CreateTriangle",с двумя свойствами - угол A,угол C.
 И создать 2 вычисляемых свойства - те же угол А,угол С.
 И если мы записываем значения в эти углы - результатом должно быть значение третьего угла.
 Для простоты можно взять прямоугольный треугольник, сумма углов которого равна 180 градусов.
 */

struct CreateTriangle {
    var angleA = 15 {
        didSet{
            if angleA > 180 {
                angleA = oldValue
                print("please enter from 0 to 180 years")
            }
        }
    }
    var angleC = 15 {
        didSet{
            if angleC > 180 {
                angleC = oldValue
                print("please enter from 0 to 180 years")
            }
        }
    }
    
    var angleB : Int {
        return 180 - (angleA + angleC)
    }
}
let myTriangle = CreateTriangle(angleA: 1902, angleC: 23)
print(myTriangle.angleA)

/*
 
 4. Создать структуру "Резюме", у которой есть такие свойства:
 - Фамилия,
 - Имя.
 - Должность,
 - Опыт,
 - Контактные данные(телефон, емейл),
 - О себе(можно записать какие-то пару предложений на выбор).
 
 */
struct Resume {
    var surname = String()
    var name = String()
    var position = String()
    var expirience = String()
    var contacts = String()
    var aboutYourself = String()
}

let myResume = Resume(surname: "K", name: "Serj", position: "iOS Developer", expirience: "1 year", contacts: "ios@gmail.com", aboutYourself: "i love cats")
print(myResume)

/*
 
 5. Задание на закрепление предыдущих тем:
 Создать журнал, что б можно было писать имя, фамилию и оценку
 Поставить ограничения: имя и фамилия не выше 15 символов каждое.
 И оценка не выше 5.
 Если везде значения превышаться выдавать об этом Сообщения в консоль.
 
 */

//struct Journal {
//    var name: String {
//        willSet {
//            print("Warning! Value wants to cahnge on" + " = " + newValue)
//        }
//        didSet {
//            print("didSet" + " = " + oldValue)
//
//            if name.count > 15 {
//                name = String(name.prefix(5))
//                print("error! Your value more than 15")
//            }
//        }
//    }
//    var surName: String {
//        didSet {
//            if surName.count > 15 {
//                surName = String(surName.prefix(5))
//                print("error! Your value more than 15")
//            }
//        }
//    }
//    var grade: Int {
//        didSet {
//            if grade > 5 {
//                print("error! Your value must be between 0 and 5")
//            }
//        }
//    }
//}
//var student = Journal(name: "Serjdgtrdtghdrthrshdthfdg", surName: "K", grade: 8)
//print(student.name)


/*
 
 5. Задание на закрепление предыдущих тем:
 Создать журнал, что б можно было писать имя, фамилию и оценку
 Поставить ограничения: имя и фамилия не выше 15 символов каждое.
 И оценка не выше 5.
 Если везде значения превышаться выдавать об этом Сообщения в консоль.
 
 */

class Journal {
    var name = "Petrov" {
        didSet {
            if name.count > 5 {
                name = oldValue
                print("error name more than 5 simbols")
            }
        }
    }
    var surname = String() {
        didSet {
            if surname.count > 15 {
                surname = oldValue
            }
        }
        willSet {
            if surname.count > 5 {
                surname = String(newValue.prefix(5))
                print("print \(surname)")
            }
        }
    }
    var grade = 0 {
        didSet  {
            if grade > 5
            {
            grade = oldValue
            print("error, rating > 5")
          }
        }
        willSet {
            print("our new value is \(newValue)")
        }
    }
    
}

var student = Journal()
student.name = "Serj43545346354trgdfhgfsdghfdf"
student.surname = "K54334565534"
student.grade = 5
print(student.surname)
print(student.grade)

/*
 
 6. Написать класс,в котором есть 4 функции:
 -пустая, которая просто выводит сообщение через print,
 - которая принимаете параметры и выводит их в консоль,
 - которая принимает и возвращает параметры.
 - которая принимает замыкание и распечатывает результаты в консоль
 
 */

class FourFunctions {
    
    func emptyFunction() {
        
    }
    
    func secondFunction(myString: String) {
        print("my string is \(myString)")
    }
    
    func thirdFunction(myInt: Int) -> Int {
        print("five plus \(myInt) = \(5 + myInt)")
        return 5 + myInt
    }
    
    func lastFunction (forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        
        let incremeter: () -> Int = {
            runningTotal = runningTotal + amount
            return runningTotal
        }
        print(incremeter)
        return incremeter
    }
    
}

var testMyClass = FourFunctions()
print(testMyClass.lastFunction(forIncrement: 5))


class StepCounter {
    var totalSteps: Int = 14 {
        
        
        willSet(newValue) {
            print("About to set totalSteps to \(newValue)")
        }
        
        
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
stepCounter.totalSteps = 360
stepCounter.totalSteps = 896
