import UIKit
import Foundation
var greeting = "Hello, playground"
func sayHello() {
    print("Hello")
}
sayHello()
let num: Int = 6
let closure: () -> Void = {
    print("closure")
}
closure()

let sum: () -> Int = {
    let a = 5
    let b = 3
    return a + b
}
sum()
let sum2 = sum
let result = sum()
result
func sayHello1(mainSay say: String) -> Int {
    let newValue = say + say + "sfvxbdfbc"
    print(say)
    return 5
}
sayHello1(mainSay: "Hello")
let goodMorning: (String) -> Void = { str in
    print(str)
    let new = str + str + "123"
    print(new)
}
goodMorning("Good Morning!")

let getMarkStatus: (Int) -> (String) = { mark in
    switch mark {
    case 5:
        return "Great!"
    case 4:
        return "Good!"
    case 3:
        return "Bad!"
    case 0...2:
        return "Very Bad!"
    default:
        return"Error Grade"
    }
}
let mark = getMarkStatus(3)
mark
func someAction(number: Int, closure: (Int) -> ()) {
    var sum = 0
    for num in 0...number {
        sum += num
    }
    print(sum)
    closure(sum)
}
someAction(number: 5) { mySum in
    print(mySum + 10 * 15)
    
}
func someAction2(number: Int, closure: (Int) -> ([Int])) {
   let newValue = number + number
   var intArray = closure(newValue)
    intArray.append(100)
    print(intArray)
    let array2 = closure(6)
    print(array2)
}
someAction2(number: 2) { number in
    var array: [Int] = []
    for num in 0...number {
        array.append(num)
    }
    return array
}
let numbersArray = [1, 2, 3, 5, 12, -2, 45, -23, 100, -21, 22]
let numbersArraySorted = numbersArray.sorted()
let numbersArraySorted1 = numbersArray.sorted { a, b in
    return a < b
}
let numbersArraySorted2 = numbersArray.sorted { firstValue, secondValue in
    firstValue > secondValue
}
print(numbersArraySorted2)
let numbersArraySorted3 = numbersArray.sorted(by: {$0 < $1})
numbersArraySorted3
var numsArrayFilter = numbersArray.filter { number in
    number < 10
}
print(numsArrayFilter)
// escaping closures

func funcEscapingClosure(closure:@escaping () -> ()) {
    print(1)
    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
       // print("начал работу")
        //closure()
    }
    print(3)
}



funcEscapingClosure {
    print(2)
}
//HOMEWORK
/*
1) Написать closure и вызвать:
1.1 () -> ()
1.2 (Typel, Type2) -> ()
1.3 (Туре, Туре) -> ([Туре])
1.4 (Int, [String]) -> ([Int: String])
2) Переписать функцию на closure:
func createClosure(_ valuel: Int, - value2: Int) →> ([Int]) &
создать массив
for num in value1...value2 {
// сложить вмассив
｝
return вернуть массив
｝
3) Создать Словарь [Int: String]. Отсортировать по ключам в порядку убывания (все способы)
// MARK: Сортировка - см. пункт
4) Чем отличается @escaping от non-escaping closure?
Привести пример кода
5) Прочитать, что такое autoclosures, написать определение, привести пример.
6) Какой тип у func и closure?
7) Читаем доку - https://swiftbook.org/pages/1512#escaping-closures™
*/
//1.1
let myFirstClosure: () -> () = {
    print("Thats my first Closure!")
}
myFirstClosure()
//1.2
let mySecondClosure: (String, Double) -> () = { (text, number) in
   print("My text is: \(text) and my number is \(number)")
   }
mySecondClosure("Hello!", 22.22)
//1.3
let myThirdClosure: (String, String) -> ([String]) = {(text1, text2) in
    var textResult = [String]()
    for index in (text1) {
        var localText = "\(index) and \(text2)"
        textResult.append(localText)
        }
    return textResult
}
print(myThirdClosure("abc", "def"))
//1.4
var myFourthClosure: (Int, [String]) -> ([Int: String]) = {(number, textArray) in
    var resultDictionary = [Int:String]()
    var myInteger = number
    for index in textArray {
        resultDictionary[myInteger] = index
        myInteger += 1
    }
    return resultDictionary
}
let myDictionary = myFourthClosure(100, ["a", "b", "c", "d", "e"])
print(myDictionary.sorted(by: <))
//2
let createClosure: (Int, Int) -> [Int] = {(value1, value2) in
    var myArray = [Int]()
    for num in value1...value2 {
        myArray.append(num)
    }
    return myArray
}
print(createClosure(23, 42))
//3
var mySortedDictionary = [17:"f", 23:"t", 36:"a", 57:"x", 95:"q"]
mySortedDictionary.sorted { value1, value2 in
    value1 > value2
}
print(mySortedDictionary.sorted(by: >))
print(mySortedDictionary.sorted(by: {$0 > $1}))
print("\n")
//сортировка по value
print(mySortedDictionary.sorted {param1, param2 in
    param1.value < param2.value
})
print(mySortedDictionary.sorted(by: {$0.value < $1.value}))
//6) Какой тип у func и closure?
// Функции и кложуры являются ссылочными типами. Это хначит, что если мы присвоим кложуру двум разным константнам (или переменным), то оба они будут ссылаться на одно и то же замыкание. Также есть простые типы, коллекции, тюплы, опционалы и специализированнные типы, отличаются все они в использовани, назначении, способе хранения и передаче

//
//4 Различие между @escaping и non-escaping заключается в том, как и когда замыкание может быть вызвано в отношении времени жизни объекта, в котором оно используется
//по умолчанию замыкания являются non-escaping
func nonEscapingClosure (myClosure: () -> ()) { //пример non-escaping
    myClosure()
}
nonEscapingClosure {
    print("I am not escaping!")
}
func escapingClosure(myClosure: @escaping() -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + 6.6) {
        myClosure()
    }
}
escapingClosure {
    print("I am escaping!")
}
//5 @autoclosure - атрибут, который упрощает создание кложуров, преобразовывая выражения в кложуры, когда они передаются в функцию как аргументы.
func myAutoClosureFunc(_ myBool: @autoclosure() -> Bool) {
    if myBool() {
        print("Bool is true!")
    } else {
        print("Bool is false")
    }
}
myAutoClosureFunc("a" + "b" == "ab")
//6 Какой тип у func и closure?
// Функции и кложуры являются ссылочными типами. Это хначит, что если мы присвоим кложуру двум разным константнам (или переменным), то оба они будут ссылаться на одно и то же замыкание. Также есть простые типы, коллекции, тюплы, опционалы и специализированнные типы, отличаются все они в использовани, назначении, способе хранения и передаче
//7 дока изучена, буду изучать еще
