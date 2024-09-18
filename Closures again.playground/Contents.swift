import UIKit

var greeting = "Hello, playground"

func nameF(a: String) {
}

let names = ["Max", "Serj", "Nicola", "Artem", "albert", "Tom"]
let s = names.sorted()

//(String, String) -> Bool
let t1 = names.sorted { (s1: String, s2: String) -> Bool in
    return s1 < s2
}
print(t1)
let t2 = names.sorted { (r1: String, r2: String) -> Bool in
    r1 > r2
}
print(t2)

let t3 = names.sorted { s1, s2 in return s1 < s2}
let t4 = names.sorted {s1, s2 in s1 < s2}
let t5 = names.sorted {s1, s2 in s1.count < s2.count}
print(t5)
//Atomatic names for arguments
let p1 = names.sorted { $0.count < $1.count }
print(p1)
//захват значений

func makeTranslator(string: String) -> (String) -> (String) {
    return {(name: String) -> String in return (string + " " + name)}
}
var englishWelcome = makeTranslator(string: "Hello")
englishWelcome("Jack")
englishWelcome("Paul")
var russianWelcome = makeTranslator(string: "Privet")
russianWelcome("Ivan")

func makeCalculate(digit: Int) -> (Int) -> (Int) {
    return {(age: Int) -> Int in return digit + age * 100}
}
var myInt = makeCalculate(digit: 32)
myInt(44)
//3) Написать сортировку массива с помощью замыкания, сначала в одну сторону, затем в другую.Вывести всё в консоль.
var myArray = [ "Loh", "Anton", "Pidor", "Sova"]
//myArray.sort { s1, s2 in s1 > s2}
//print(myArray)
let q1 = myArray.sorted { $1.count > $0.count}
print(q1)
let q2 = myArray.sorted { $1.count < $0.count}
print(q2)
//4) Создать метод который запрашивает имена друзей, после этого имена положить в массив.
//Массив отсортировать по количеству букв в имени.

func friendsMethod(nameOfFriend: String) -> [String] {
    var arrayOfFriends = [nameOfFriend]
    return arrayOfFriends.sorted {$0.count < $1.count}
}
var massiveOne = friendsMethod(nameOfFriend: "Sanek")
print(massiveOne)
massiveOne = friendsMethod(nameOfFriend: "Rex")
print(massiveOne)


func twoFriends (friend1: String) -> (String) -> [String] {
    var friendsArray: [String] = []
    friendsArray.append(friend1)
    return { (friend2: String) -> [String] in friendsArray.append(friend2)
        return friendsArray.sorted {$0.count > $1.count}
    }
}
let f1 = twoFriends(friend1: "Igor")
var e = f1("Sasha")
print(e)
//e.sorted {$0 < $1}
//var testArray: [String] = [String]
//testArray = f1
//5) Написать функцию которая будет принимать ключи, выводить ключи и значения словаря (Dictionary). Тип ключа и значения выбирайте сами.
func dictionaryFunc (key: Int) -> [Int: Int] {
    var value = key + 24242323
    var myDictionary: [Int: Int] = [key:value]
    return myDictionary
}
let d1 = dictionaryFunc(key: 1110)
print(d1)
//Написать функцию, которая принимает пустые массивы(один строковый, второй - числовой) и проверяет их: если пустой - то добавить значения и вывести в консоль.

func emptyArray (array1: [String], array2: [Int]) -> String {
    
    if array1.isEmpty && array2.isEmpty {
        var z = array1
        var c = array2
        z.append("Looooh, pidor")
        c.append(42)
        return "Vot ono: \(z[0]) i ono: \(c[0])"
    }
    else {
        return "kek"
    }
}

var intArray: [Int] = []
var stringArray:[String] = []
var t = emptyArray(array1: stringArray, array2: intArray)
print(t)
