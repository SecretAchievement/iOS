import UIKit

var greeting = "Hello, playground"
//lesson 9, Functions

/*
 
 func functionName (parameters) -> returning parameters {
 ...function body...
 }
 */

func sayFunc() {    print("HI")
}
sayFunc()

//first of september


//var journalArray = [String]()
//let name = "Polina"
//let profession1 = "Programmer"
//
//journalArray.append(name)
//journalArray.append(profession1)
//print(journalArray)
//
//let name2 = "Serj"
//let profession2 = "lawer"
//journalArray.append(name2)
//journalArray.append(profession2)
//
//let name3 = "Vladik"
//let profession3 = "Psyhiatry"
//journalArray.append(name3)
//journalArray.append(profession3)
//
//print(journalArray)

// second

var arrayJournal = [String]()
func addStudent(name: String, professional: String) {
    arrayJournal.append(name)
    arrayJournal.append(professional)
    print(arrayJournal)
}

addStudent(name: "Jack", professional: "iOS Dev")
addStudent(name: "Ivan", professional: "Android Dev")
addStudent(name: "John", professional: "Java Dev")

print(arrayJournal)
//function for sum

func calculate(number1: Int, number2: Int) -> Int {
    return number1 + number2
}
calculate(number1: 333, number2: 444)

let sum = calculate(number1: 10, number2: 20)
print(sum)


var money = [1, 1, 52, 10,23, 244,23,232,6]
var money2 = [1, 1, 52, 10,23, 244,23,232,65566]
func calculateMoney(inArray: [Int]) -> Int  {
    var sum = 0
    for i in inArray {
        sum += i
    }
    return sum
}
calculateMoney(inArray: money)
let sum2 = calculateMoney(inArray: money2)
print("sum2 = \(sum2)")

func generalFunc(answer: Bool) -> () -> String {
    func sayYes() -> String {
        return "Yes"
    }
    func sayNo() -> String {
        return "No"
    }
    return answer ? sayYes : sayNo
}
generalFunc(answer: false)()


//homework
//func stringFunction(myString: String) -> () -> Int {
//    
//    func sayOne() -> Int {
//        return 1
//    }
//    func sayTwo() -> Int {
//        return 2
//    }
//    return if sayOne() {
//        return "One"
//    }
//}
//stringFunction(myString: "")

//1 которая ничего не принимает и ничего не возвращает.

func firstFunc (){
    print("Hi! Im first!")
}
//2)Принимает но не возвращает.

func secondfFunc (myString: String) {
    print(myString)
}

//3)И принимает и возвращает = и все три вызвать потом

func thirdFunc (myInteger: Int) -> Int {
    return myInteger + 888
}

firstFunc()
secondfFunc(myString: "Wow")
thirdFunc(myInteger: 5483948389)

//Создать журнал для учителя который будет принимать имя студента , профессию и оценку и записывает это все в массив.И внесите 10 студентов туда и распечатаете через цикл for

//var arrayJournal = [String]()
//func addStudent(name: String, professional: String) {
//    arrayJournal.append(name)
//    arrayJournal.append(professional)
//    print(arrayJournal)
//}
//
//addStudent(name: "Jack", professional: "iOS Dev")
//addStudent(name: "Ivan", professional: "Android Dev")
//addStudent(name: "John", professional: "Java Dev")
//
//print(arrayJournal)

var journal = [String]()
func journalFunc (name: String, profession: String, grade: String) {
    journal.append(name)
    journal.append(profession)
    journal.append(grade)
    print(journal)
}
journalFunc(name: "Jack", profession: "Lawer", grade: "4")
journalFunc(name: "Kat", profession: "Lawer", grade: "43")
journalFunc(name: "Nick", profession: "Lawer", grade: "42")
journalFunc(name: "Serj", profession: "Lawer", grade: "434")
journalFunc(name: "Fred", profession: "Lawer", grade: "44")
journalFunc(name: "Lemon", profession: "Lawer", grade: "4")
journalFunc(name: "Ron", profession: "Lawer", grade: "44")
journalFunc(name: "Harry", profession: "Lawer", grade: "42")
journalFunc(name: "Yo", profession: "Lawer", grade: "43")
for i in journal {
    print(i)
}
//Создать функцию которая принимает имя и фамилию, потом положить это в массив и отсортировать и вывести результат в консоль :)

var nameArray = [String]()
func nameFunc (name: String, surname: String) {
    let nameAndSurname = name + "_" + surname
    nameArray.append(nameAndSurname)
}
nameFunc(name: "Serj", surname: "Haben")
nameFunc(name: "Harry", surname: "Potter")
nameFunc(name: "Walter", surname: "White")
nameFunc(name: "Ron", surname: "Weasley")
nameFunc(name: "Tom", surname: "Grey")
nameFunc(name: "Viktor", surname: "Fant")
print(nameArray.sorted())

//Создайте функцию которая принимает параметры и вычисляет площадь круга

//import Foundation [1](https://tr-page.yandex.ru/translate?lang=en-ru&url=https%3A%2F%2Fwww.tutorialspoint.com%2Fswift-program-to-find-the-area-of-a-circle)
//
//var r = 20.0 [1](https://tr-page.yandex.ru/translate?lang=en-ru&url=https%3A%2F%2Fwww.tutorialspoint.com%2Fswift-program-to-find-the-area-of-a-circle)
//var pi = 3.14 [1](https://tr-page.yandex.ru/translate?lang=en-ru&url=https%3A%2F%2Fwww.tutorialspoint.com%2Fswift-program-to-find-the-area-of-a-circle)
//var areaOftheCircle = pi * r * r [1](https://tr-page.yandex.ru/translate?lang=en-ru&url=https%3A%2F%2Fwww.tutorialspoint.com%2Fswift-program-to-find-the-area-of-a-circle)
//
//print("Радиус окружности равен", r)
//print("Таким образом, площадь окружности равна", areaOftheCircle) [1](https://tr-page.yandex.ru/translate?lang=en-ru&url=https%3A%2F%2Fwww.tutorialspoint.com%2Fswift-program-to-find-the-area-of-a-circle)
func squareCircleFunc (radius: Double) -> Double{
    var squareCircle = 3.14 * radius * radius
    return squareCircle
}
squareCircleFunc(radius: 4)

//Создайте Dictionary , с именем ученики , где ключ name и score , а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только именна по ключу
//var pupils = ["Name" : "Gregor", "grade" : 9]

//let tupleGrade = (5, 3, 2, 5, 4)

//for element in tupleGrade {
//    print(element)
//}

//var pupils = ["Jack" : 5]
let tupleName = ("Serj", "Hank", "Jack", "Ron", "Tom")
let tupleGrade = (5, 3, 2, 5, 4)
var pupils = Dictionary(dictionaryLiteral: (tupleName.0, tupleGrade.0),(tupleName.1, tupleGrade.1),(tupleName.2, tupleGrade.2),(tupleName.3, tupleGrade.3),(tupleName.4, tupleGrade.4))
print(pupils.keys)


//let names = ["Arthur", "Zaphod", "Trillian", "Ford", "Marvin"]
//for name in names {
//    print(name)
//}


//func tupleFunc (name: String, grade: Int)
//tupleFunc(name: tupleName, grade: tupleGrade)

//var mostUsedLanguage = (dataScience: ["Python": 4.3, "SQL": 2.4], webDesign: ["Javascript": 16.4, "HTML": 8.6]) [1](https://www.codespeedy.com/tuples-in-swift/)
//
//mostUsedLanguage.dataScience["Java"] = ("tupleValue") [1](https://www.codespeedy.com/tuples-in-swift/)

//var students: [String: (String, Int)] =
//[ "John": (name: "John", score: 5),
//  "Mary": (name: "Mary", score: 4),
//  "Alice": (name: "Alice", score: 3),
//  "Bob": (name: "Bob", score: 2)
//]
//print(students.keys)
