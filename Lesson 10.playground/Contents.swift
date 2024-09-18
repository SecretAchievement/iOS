import UIKit

var greeting = "Hello, playground"
//Closures
 /*
  Замыкания являются анонимными функциями, которые можно передавать в качестве аргументов другим функциям
  
  (параметры) -> возвращаемый тип in
         операторы
  */

func nameFunc(a: String) {
}

let names = ["Max", "Serj", "Nicola", "Artem", "albert", "Tom"]
let s = names.sorted()

//(String, String) -> Bool

let test1 = names.sorted   { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(test1)

let test2 = names.sorted { (s1, s2) in return s1 < s2 }
let test3 = names.sorted { (s1, s2) in s1 < s2 }
//reversed order
let test4 = names.sorted { (s1, s2)in s2 < s1 }
print(test4)
let test5 = names.sorted { (s1, s2) in s1.count < s2.count }
print(test5)
//automatic names for arguments

let p1 = names.sorted(by: {$0 < $1 } )
let p2 = names.sorted(by: {$1 < $0 } )
print(p1)
print(p2)

let p3 = names.sorted(by: {$0.count < $1.count})
print(p3)

//Захват значений

func makeTranslator(string: String) -> (String) -> (String) {

    return {(name: String) -> String in return (string + "  " + name)}
}

var englishWelcome = makeTranslator(string: "Hello!")

englishWelcome("Jack")
englishWelcome("Paul")

var russiaWelcome = makeTranslator(string: "Privet")
russiaWelcome("Serj")
print(russiaWelcome)

//HOMEWORK

//3) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.

let musicians = ["Groul", "Cobain", "Sykes", "Ghaan", "Gore", "Lavigne"]
let m = musicians.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(m)
let m1 = musicians.sorted { (s1: String, s2: String) -> Bool in
    return s2 < s1
}
print(m1)
//4) Создать метод который запрашивает имена друзей, после этого имена положить в массив. Массив отсортировать по количеству букв в имени.
var myFriends = [String]()

func friendsFunc (name: String) {
    myFriends.append(name)
    print(myFriends)
}
friendsFunc(name: "Hank")
friendsFunc(name: "Jack")
friendsFunc(name: "Tom")
friendsFunc(name: "Jerry")
friendsFunc(name: "Ibragim")

let f = myFriends.sorted { (s1, s2) in s1.count < s2.count }
print(f)

//5) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.

var myDictionary: [String: Int] = [:]
func dictionaryFunc (key: String, value: Int) {
    myDictionary = [key : value]
    print(myDictionary)
}
dictionaryFunc(key: "Serj", value: 32)
//6) Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.


//func testFunc (stringArray: [String], intArray: [Int]) -> Bool {
  //  return stringArray.isEmpty
//}

func testFunc (stringArray: [String], intArray: [Int]) -> ([String], [Int]) {
    var z = stringArray
    var c = intArray
    if stringArray.isEmpty {
        z.append("Serj")
        print(z)
    }
    
    if intArray.isEmpty {
        c.append(242)
        print(c)
    }
    return(z, c)
}

var emptyInt = [Int]()
var emptyString = [String]()
print(testFunc(stringArray: emptyString, intArray: emptyInt))
//Closures from scootarenko

let numbers = [32, 23, 23, 23, 32435, 46, 545, 423, 35, 4, 2534]

func filterArray(array: [Int], f:(Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    
    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    return filtered
}
/*
func compare(i: Int) -> Bool {
    return i % 2 == 1
}
*/
//---------CLOSURES STANFORD

func changeSign(operand: Double) -> Double {
    return -operand
}
var operation: (Double) -> Double
operation = {-$0}
let result = operation(3.0)
//----------closures as arguments

//func someFunction(someArray:[Int], myFunction: (Int) -> Bool) -> [Int] {
//    
//    //var newArray: [Int]
//    return newArray
//}
var arr = [2, 3, 4, 5]

func myMap(for array: [Int], _ transform: (Int) -> Int) -> [Int] {
    var result: [Int] = []
    for element in array {
        result.append(transform(element))
    }
    return result
}
let result1 = myMap(for: arr) {$0 + 2}

func myFunc(for myArray: [Int], and transform: (Int) -> Int) -> [Int] {
    var myResult: [Int] = []
    for i in myArray {
        myResult.append(transform(i))
    }
    return myResult
}

let result2 = myMap(for: arr) {$0 + 3}
