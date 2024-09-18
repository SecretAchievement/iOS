import UIKit

var greeting = "Hello, playground"

var str = "Наследование и ООП"

class People {
    var name = "John"
    var lastName = "Smith"
    var fullName: String {
        return name + " " + lastName
    }
    
    func printedMethods() -> String {
        return "Your name - "
    }
}

class Man: People {
    override func printedMethods() -> String {
        return super.printedMethods() + "Jack"
    }
}

let people = People()
people.name
people.printedMethods()
let man = Man()
man.name
man.printedMethods()

//-----------------Incapsulation---------------

class Boys {
    var firstName = "Bob"
    public var lastName = "Michael"
    func printHi() {
        print("Hi!")
    }
}

class Girls: Boys {
    
    
}

let girls = Girls()
girls.printHi()

//--------------------------------------Polymorphism-------------------

class General {
    func methodHi() {
        print("Hello General")
    }
}

class People1 : General {
    override func methodHi() {
        print("Hi people1")
    }
}

class People2: General {
    override func methodHi() {
        print("Hi people2")
    }
}

let general = General()
let people1 = People1()
let people2 = People2()

var array = [general, people1, people2]

for obj in array {
    obj.methodHi()
}
//-------------------------HOMEWORK------------------------------

//1. Создать класс "люди", в этом классе 4 property - "имя", "рост", "вес", "пол", а также будет иметь метод "say(говорит)".

class Peoples {
    var name = String()
    var sex = String()
    var height = Int()
    var weight = Int()
    func say() {
        print("something from class Peoples")
    }
}
//2. Создать sub class (наследники) "повар", "менеджер", "борец" и переопределить метод "say(говорит)" в каждом из этих классов.


class Cook: Peoples {
    
    override func say() {
        print("Hello! Im cook!!!")
    }
}
class Manager: Peoples {
    
    override func say() {
        print("Hello! Im manager!!!")
    }
}
class Fighter: Peoples {
    override func say() {
        print("Hello! Im fighter!!!")
    }
}
//var testFighter = Fighter()
//print(testFighter.say())
//3. Создать по одному объекту(экземпляру) каждого класса и объединить их в массив.
var myCook = Cook()
var myManager = Manager()
var myFighter = Fighter()
var peopleArray = [myCook, myManager, myFighter]
//В цикле “for in” пройти по всем элементам массива и вывести в консоль все характеристики каждого объекта (имя, рост и тд) и у каждого вызвать метод "say(говорит)".

myCook.name = "Cook"
myCook.sex = "Female"
myCook.height = 160
myCook.weight = 100

myManager.name = "Manager"
myManager.sex = "Male"
myManager.height = 150
myManager.weight = 110

myFighter.name = "Fighter"
myFighter.sex = "Male"
myFighter.height = 180
myFighter.weight = 210

for c in peopleArray {
    c.say()
    print("I am \(c.name), my gender is \(c.sex), height is \(c.height), weight is \(c.weight).")
}
//5. Создать еще одного наследника от super Class, добавить в него пару новых свойств, добавить в массив и в цикле вывода вывести его свойства как дополнение к свойствам People.

class Sailor: Peoples {
    var favoriteFood = String()
    var age = Int()
    override func say() {
        print("Hello! Im sailor!!!")
        
    }
}

var mySailor = Sailor()
mySailor.favoriteFood = "my fovorite food is Fish"
mySailor.age = 35
mySailor.name = "Max"
mySailor.sex = "Male"
mySailor.height = 200
mySailor.weight = 90
peopleArray.append(mySailor)

for c in peopleArray {
    c.say()
    print("AND AGAIN: I am \(c.name), my gender is \(c.sex), height is \(c.height), weight is \(c.weight).")
    print("Favorite fish of sailor: \(mySailor.favoriteFood), age of Sailor: \(mySailor.age)")
}
//6. Метод "say(говорит)" реализовать таким образом, чтобы перед тем как выполнить собственный method say, выполнялся сначала метод say класса People.
//Вывести все это в обратном порядке(Google в помощь).
var myPerson = Peoples()
peopleArray.append(myPerson)
print(myPerson.say(), mySailor.say())
for c in peopleArray.reversed() {
    c.say()
    print("WOOOOOOOOOOOW: I am \(c.name), my gender is \(c.sex), height is \(c.height), weight is \(c.weight).")
    print("Favorite fish of sailor: \(mySailor.favoriteFood), age of Sailor: \(mySailor.age)")
}
//8. Создать класс "Марсианин" (не наследник класса people!) со своими собственными property (отличными от people) и методом "say" (отличным от people).

class Martianin {
    var colour = String()
    var heads = Int()
    var nickname = String()
    func say() {
        print("Im from Mars!")
    }
}
//9. Унаследоваться от него и создать пару других классов (Инопланетян) с переопределенным методом "say".
class Loopa : Martianin {
    override func say() {
        print("Im Loopa and i from Mars!")
    }
}
class Poopa : Martianin {
    override func say() {
        print("Im Poopa and i from Mars!")
    }
}
//10. Объединить всех people и Марсианинов) в один массив.
var myLoopa = Loopa()
myLoopa.colour = "Grey"
myLoopa.heads = 3
myLoopa.nickname = "Loopa"
var myPoopa = Loopa()
myPoopa.colour = "Red"
myPoopa.heads = 8
myLoopa.nickname = "Poopa"
var everyoneArray = Array<AnyObject>()
everyoneArray = [myLoopa, myPoopa, myCook, mySailor, myFighter, myManager]
//11. В цикле выводить тип объекта (People или Марсианин) перед тем как выводить его свойства и вызывать метод

for i in everyoneArray {
    print(type(of: i))
    if var peoples = i as? People {
        print("this object belongs to People")
    } else if var martianin = i as? Martianin {
        print("this belongs to class Martianin")
    }
}

/*12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
 12. Поместить всех people в один массив, а Марсиан в другой массив (количество People и Марсиан должно быть разное)
 13. В одном цикле “for in” выводить People а потом Марсианина, доставая данные поочередно из двух разных массивов, если в одном из массивов объектов больше, то в конце должны выводиться только объекты этого массива (так как других уже нет)
*/

var myPeopleArray = [myCook, mySailor, myFighter, myManager]
var myAliensArray = [myLoopa, myPoopa]

let maxCount = max(myPeopleArray.count, myAliensArray.count)

for item in 0..<maxCount {
    if item < myPeopleArray.count {
        print("My name is \(myPeopleArray[item].name) my sex is \(myPeopleArray[item].sex), my height is \(myPeopleArray[item].height), my weight is \(myPeopleArray[item].weight) )")
    }
    if item < myAliensArray.count {
        print("My colour is: \(myAliensArray[item].colour) an i have \(myAliensArray[item].heads) heads")
    }
}

/*
 
 14. Соединить Марсиан и People в одном массиве.
 15. Используя нужный метод array отсортировать массив (как результат будет другой массив).
 16. Сортировать так: сначала People, а потом Марсиане, люди отсортированы по имени, а Марсиане по марсианским кличкам.
 17.Требует разобраться с сортировкой.
 
 */

let superMassive: [Any] = myAliensArray + myPeopleArray
//print(superMassive)
var newArray = superMassive.sorted {
    
    if var object1 = $0 as? People, var object2 = $1 as? People {
        object1.name < object2.name
    }
    if var object1 = $0 as? Martianin, var object2 = $1 as? Martianin {
        object1.nickname < object2.nickname
    }
    return false
}
print(newArray)
