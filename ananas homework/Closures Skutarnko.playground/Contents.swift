import UIKit

var greeting = "Hello, playground"
let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10, 4, 3, 1, 8, 11]
func filterArray(array: [Int], funct: (Int) -> Bool) -> [Int] {
    var filtered = [Int]()
    
    for integer in array {
        if funct(integer) {
            filtered.append(integer)
        }
    }
    return filtered
}
var s = filterArray(array: numbers, funct: {d in d % 3 == 1})
print(s)
var v = filterArray(array: numbers, funct: {(i: Int) -> Bool in
  print("i = \(i)")
    return i % 2 == 1
    
})
print(v)
var t = filterArray(array: numbers, funct: { j in return j % 4 == 1})
print(t)
var f = filterArray(array: numbers) {$0 % 3 == 0}

let array1 = [1, 2, 3, 5, 7, 123]

var count = 0

let a4 = filterArray(array: numbers) {value in
    for include in array1 {
        count += 1
        if include == value {
            return true
        }
    }
    return false
}
print(a4)
count

var dict = [Int:Bool]()
for value in array1 {
    count += 1
    dict[value] = true
}

let a5 = filterArray(array: numbers) {value in
     count += 1
    return dict[value] != nil
}
/*
 1) Написать функцию, которая принимает, один клоужер, добавить в тело функции цикл for от 1 до 10 и вывести эти цифры и вызвать клоужер
 2) Создать массив Int, используя функцию sorted  отсортировать массив по возрастанию и убыванию
3) Написать функцию, которая принимает массив Int и клоужер и возвращает Int. Клоужер должен принимать 2 Int (один опшинал) и возвращать да или нет. В самой функции создайте опшинал переменную. Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную. Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
 4) Создайте произвольную строку. Преобразуйте ее в массив букв. Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы
 5)  Проделайте задание 3 но для нахождения минимальной и максимальной буквы из массива букв (соответственно скалярному значению)
 */
//1

func closureFunc(closures:()) {
    
    for i in 1...10 {
        print("i = \(i)")
    }
    closures
}
closureFunc(closures: {
    print("111")
}())
//func filterArray(array: [Int], funct: (Int) -> Bool) -> [Int] {

func closureFunc1(myInt: Int, myFunc:()) {
    
    if myInt > 10 {
        print("int more than 10")
    } else {
        print("int not more than 10")
        myFunc
    }
}

//func filterArray(array: [Int], funct: (Int) -> Bool) -> [Int] {
//    var filtered = [Int]()
//    
//    for integer in array {
//        if funct(integer) {
//            filtered.append(integer)
//        }
//    }
//    return filtered
//}
closureFunc1(myInt: 3, myFunc: {print("OLOLO")}())


func closureFunc2(myString: String, myFunc:(Character) -> Bool) -> String {
    var localString = ""
    
    for character in myString {
        if myFunc(character){
            localString = "\(character)"
        }
    }
    return localString
}
let h1 = closureFunc2(myString: "444rrr", myFunc: {$0 == "r"})
print(h1)


func closureFunc3(myInt: Int, myFunc:(Int, Int) -> String) -> Bool {
    var myBool = false
    
    for index in 0..<myInt {
        let result = myFunc(myInt, index)
        if result.contains("match") {
            myBool = true
            break
        }
    }
    return myBool
}

let result = closureFunc3(myInt: 5) { (a, b) -> String in
    return a == b ? "match" : "no match"
}
    
func filterAndTransform(numbers: [Int], filterClosure: (Int) -> Bool, transformClosure: (Int) -> Int) -> [Int] {
    var filtered = [Int]()
    for index in numbers {
        if filterClosure(index) {
            let transformedNumber = transformClosure(index)
            filtered.append(transformedNumber)
        }
    }
    return filtered
}
let numbers1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let filteredAndTransformedNumbers = filterAndTransform(numbers: numbers1, filterClosure: {$0 % 2 == 0}, transformClosure: { $0 * $0 })
print(filteredAndTransformedNumbers)  // Выведет [4, 16, 36, 64, 100]
func applyToEach(strings: [String], transformClosure: (String) -> String) -> [String] {
    var myStringArray = [String]()
    
    for index in strings {
        let transformededString = transformClosure(index)
        myStringArray.append(transformededString)
    }
    return myStringArray
}
let words = ["apple", "banana", "cherry"]
let transformedWords = applyToEach(strings: words, transformClosure: { $0.uppercased() })
print(transformedWords)  // Выведет ["APPLE", "BANANA", "CHERRY"]

let trans = applyToEach(strings: words) { string in
    if string.count < 100 {
        return "oh yeah \(string)"
    }
    return ""
}
print(trans)
// 2) Создать массив Int, используя функцию sorted  отсортировать массив по возрастанию и убыванию

let numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let numbers3 = numbers2.sorted { a, b in
    return a > b
}
print(numbers3)
let numbers4 = numbers2.sorted { a, b in
    return a < b
}
print(numbers4)


/*
 func filterAndTransform(numbers: [Int], filterClosure: (Int) -> Bool, transformClosure: (Int) -> Int) -> [Int] {
     var filtered = [Int]()
     for index in numbers {
         if filterClosure(index) {
             let transformedNumber = transformClosure(index)
             filtered.append(transformedNumber)
         }
     }
     return filtered
 }
 */

func combineAndFilter(integers1: [Int], integers2: [Int], combineClosure: (Int, Int) -> Int, filterClosure: (Int) -> Bool) -> [Int] {
    var myResult = [Int]()
    
    for (index1, index2) in zip(integers1, integers2) {
        let combinedNumber = combineClosure(index1, index2)
        print("Combined: \(index1) + \(index2) = \(combinedNumber)")
        if filterClosure(combinedNumber) {
            myResult.append(combinedNumber)
        } else {
            print("Filtered out: \(combinedNumber)")
        }
    }
    return myResult
}

let array11 = [1, 2, 3]
let array2 = [3, 4, 5]
let combinedAndFilteredArray = combineAndFilter(integers1: array11, integers2: array2, combineClosure: { $0 + $1 }, filterClosure: { $0 % 2 == 0 })
print(combinedAndFilteredArray)
/*
 3) Написать функцию, которая принимает массив Int и клоужер и возвращает Int. Клоужер должен принимать 2 Int (один опшинал) и возвращать да или нет. 
 В самой функции создайте опшинал переменную. 
 Вы должны пройтись в цикле по массиву интов и сравнивать элементы с переменной используя клоужер. Если клоужер возвращает да, то вы записываете значение массива в переменную. в конце функции возвращайте переменную. 
 Используя этот метод и этот клоужер найдите максимальный и минимальный элементы массива.
 */
//??????????????????????????????????????
func myClosure11(integerArray: [Int], closure: (Int, Int?) -> Bool) -> Int {
    var resultInt: Int?
    for number in integerArray {
        if closure(number, resultInt) {
            resultInt = number
        } else {
            resultInt
        }
    }
    return resultInt ?? 0
}
let startArray = [2, 1, 6, 2, 6,3,2,1,65,7,3,3]
let arrayMax = myClosure11(integerArray: startArray, closure: {
    if $1 == nil {
        return true
    } else {
        return $0 > $1!
    }
})
print(arrayMax)
//????????????????????????????????????
let startArray1 = [2, 1, 6, 2, 6,3,2,1,65,7,3,3]

func filterArray1(integerArray: [Int], myClosure: (Int) -> Bool) -> [Int] {
    var myArray = [Int]()
    for value in integerArray {
        if myClosure(value) {
            myArray.append(value)
        }
    }
    return myArray
}
let evenNumbers = filterArray1(integerArray: startArray1) { number in
    return number % 2 == 0
}
print(evenNumbers)
let startArray2 = [2, 1, 6, 2, 6,3,2,1,65,7,3,3]
func transformArray1 (integerArray: [Int], closure:(Int) -> Int) -> [Int] {
    var resultArray = [Int]()
    
    for index in integerArray {
        resultArray.append(closure(index))
    }
    return resultArray
}
var array18 = transformArray1(integerArray: startArray2) { value in
    return value * 10
}
print(array18)
let startArray3 = [2, 1, 6, 2, 6,3,2,1,65,7,3,3]

func aggregateArray(array: [Int], closure: (Int, Int) -> Int) -> Int {
    var resultInt = 0
    
    for value in array {
        resultInt = closure(resultInt, value)
    }
    return resultInt
}
let x = aggregateArray(array: startArray3) { a, b in
    a + b
}
print(x)

let startArray4 = [2, 1, 6, 2, 6,3,2,1,65,7,3,3]
print(startArray.first)
print(startArray[0])
func findMinMax(array: [Int], closureMin:(Int, Int) -> Int, closureMax:(Int, Int) -> Int) -> (minValue: Int, maxValue: Int) {
    guard !array.isEmpty else {
        fatalError("array cannot be empty")
    }
    
    
    var minValue = array[0]
    var maxValue = array[0]
    
    for value in array.dropFirst() {
        minValue = closureMin(minValue, value)
        maxValue = closureMax(maxValue, value)
    }
    
    return(minValue, maxValue)
}
let (minValue, maxValue) = findMinMax(array: startArray4, closureMin: { min, value in
    return min < value ? min : value
}, closureMax: { max, value in
    return max > value ? max : value
})
print(minValue, maxValue)
//4) Создайте произвольную строку. Преобразуйте ее в массив букв. 
//Используя метод массивов sorted отсортируйте строку так, чтобы вначале шли гласные в алфавитном порядке, потом согласные, потом цифры, а потом символы


var string = "abcdefghijk123lmn&&&$$$@opqrstuvwxyz"
var characterArray = Array(string)

let sortedCharacters = characterArray.sorted { (a, b) -> Bool in
    let vowels = "aeiouAEIOU"
    let consonants = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    
    func getCategory(char: Character) -> Int {
        
        switch char {
        case _ where vowels.contains(char): return 0
        case _ where consonants.contains(char): return 1
        case _ where char.isNumber: return 2
        default: return 3
        }
    }
    let categoryA = getCategory(char: a)
    let categoryB = getCategory(char: b)
    
    if categoryA == categoryB {
        return a < b
    } else {
        return categoryA < categoryB
    }
}
let result2 = String(sortedCharacters)
print(result2)
