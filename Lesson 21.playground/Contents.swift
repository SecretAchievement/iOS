import UIKit

var greeting = "Hello, playground"
//Generics

var stringArray = ["Hi", "Hello", "Goodbye"]
var intArray = [1, 3, 5, 66, 3]
var doubleArray = [1.2, 2.4, 5.2]

func printStringFromArray(a: [String]) {
    for s in a {
        print(s)
    }
}

func printIntFromArray(a: [Int]) {
    for i in a {
        print(i)
    }
}

func printDoubleFromArray(a: [Double]) {
    for d in a {
        print(d)
    }
}

printStringFromArray(a: stringArray)
printIntFromArray(a: intArray)
printDoubleFromArray(a: doubleArray)
//GENERIC EXAMPLE

func printElementFromArray<T>(a: [T]) {
    for elements in a {
        print(elements)
    }
}
printElementFromArray(a: stringArray)
printElementFromArray(a: intArray)
printElementFromArray(a: doubleArray)
//-----------------------------------ex 2
func doNothing<T>(x: T) -> T {
    return x
}
doNothing(x: "mama")
doNothing(x: 1234)
doNothing(x: false)

//ex 3 Struct
//var emptyArray = [String]()
struct GenericArray<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
}
var myFriendsList = ["Vova", "Bob", "Klim"]
var arrays = GenericArray(items: myFriendsList)
arrays.push(item: "Nick")
//HOMEWORK

//3) Создать любой generic для классов, структур, методов, перечислений( по 1 на каждый).

class genericClass<T> {
    var obj: T
    init(obj: T) {
        self.obj = obj
    }
    func returnObj(object: T) -> T  {
        //print(obj)
        return object
    }
    func returnObjAgain () {
        print (obj)
    }
}
var i = genericClass(obj: 884)
//genericClass.returnObj(44)
i.returnObj(object: 88)
i.returnObjAgain()
var y = genericClass(obj: true)
y.returnObjAgain()
//
struct genericStruct<T> {
    var thing: T
    func returnThing() {
      print(thing)
    }
}
var thing = genericStruct(thing: "Again")
thing.returnThing()
//
func genericFunc<T>(myThing: T) -> String {
    return "aheheheheh \(myThing)"
}
var r = "Lol"
genericFunc(myThing: r)
//
enum myEnum<T>{
  case success(T)
  case failure(T)
}
myEnum.failure("One")
myEnum.success(4)
//
//4) Написать функцию, которая принимает Generic объект и складывает в массив/словарь(на выбор)
func myGenericFunc<T> (myObject: T, myArray: [T]) -> [T] {
    var myArray1: [T] = myArray
    //myArray1.append(myArray)
    myArray1.append(myObject)
    return myArray1
}
var lalka: [Int] = [4]
print(lalka)
var z = myGenericFunc(myObject: 6, myArray: lalka)
print(z)
//5) Создать класс, который сортирует массивы значений(на ваш выбор) 3 разными способами.
//Для шпаргалки смотрим обсуждение: "РЕАЛИЗАЦИЯ АЛГОРИТМОВ НА ЯЗЫКЕ SWIFT 3"


class Sorting<T: Comparable> {
    var array: [T] = []
    func ascendingSorting ()  {
        var newArray1: [T] = array
        newArray1.sort(by: {$0 < $1})
        print(newArray1)
    }
    func sortByName() {
        let newArray2 = array.sorted()
        print(newArray2)
    }
}
var c1111 = ["Gemini"]
//var s = Sorting(array: c1111)
//sorting.ascendingSorting()
//6) Написать класс на свой вкус(любые методы, проперти) универсального типа. Используя extension, расширить класс, добавить сабскрипт. (потренируйтесь)


class myClass<T> {
    var myObject: T
    func printMyObject() {
        print(myObject)
    }
    init(myObject: T) {
        self.myObject = myObject
    }
}
var obj1 = myClass(myObject: "3")
obj1.printMyObject()
extension myClass {
    subscript (obj1111: T) -> String {
        get {
            var z: String = "\(obj1111) + HEHEHEHE"
            return z
        }
    }
}
//var obj1 = myClass(myObject: 555)
obj1["4"]
