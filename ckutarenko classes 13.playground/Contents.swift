import UIKit

var greeting = "Hello, playground"
let schooler1 = (name: "Alex", age: 20)
let schooler2 = (name: "Bob", age:22)
schooler1.name
schooler2.name
let schooler3 = (name: "Sam", age: 23)
schooler3.name


class schoolerClass {
    var name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
let stClass1 = schoolerClass(name: "Bob", age: 18)
stClass1.name = "Alex"
stClass1.age = 21

struct schoolerStruct {
    var name: String
    var age: Int
}
var stStruct1 = schoolerStruct(name: "Sam", age: 24)
//stStruct1.name = "Same2"
//stStruct1.age = 21
stStruct1
var stStruct2 = stStruct1
stStruct2.age = 25
stStruct2.name = "Samuel"
stStruct2
stStruct1
var stClass2 = stClass1
stClass2.age = 20
stClass2.name = "AAA"
stClass2
stClass1
func addOneYear(schooler: schoolerClass) {
    schooler.age += 1
}
func addOneYear( schooler: inout schoolerStruct) {
    schooler.age += 1
}
stClass1
addOneYear(schooler: &stStruct1)
stStruct1
stClass1
addOneYear(schooler: stClass1)
var arrayClasses = [stClass1]
arrayClasses[0]
arrayClasses[0].age = 50
arrayClasses[0]
stClass1
//HOMEWORK

/*
 1.1 Создайте струĸтуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несĸольĸо эĸземпляров этой струĸтуры и заполните их данными. Положите их всех в массив (журнал).
 1.2- Напишите фунĸцию, ĸоторая принимает массив студентов и выводит в ĸонсоль данные ĸаждого. Перед выводом ĸаждого студента добавляйте порядĸовый номер в “журнале”, начиная с 1.
 1.3 С помощью фунĸции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
 1.4 Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаĸовые, а вы сделайте таĸ чтобы таĸое произошло, то сравниваются по имени. Распечатайте “журнал”.
 1.5 Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив?
 Распечатайте оба массива.
 */
//1.1
struct MyschoolerStruct {
    var name: String
    var secondName: String
    var birthYear: Int
    var averageGrade: Int
    init(name: String, secondName: String, birthYear: Int, averageGrade: Int) {
        self.name = name
        self.secondName = secondName
        self.birthYear = birthYear
        self.averageGrade = averageGrade
    }
}
var myschooler1 = MyschoolerStruct(name: "Alex", secondName: "Travolta", birthYear: 1965, averageGrade: 81)
var myschooler2 = MyschoolerStruct(name: "Bob", secondName: "Graham", birthYear: 1973, averageGrade: 45)
var myschooler3 = MyschoolerStruct(name: "Jack", secondName: "Tunberg", birthYear: 1935, averageGrade: 77)
var myschooler4 = MyschoolerStruct(name: "Zorro", secondName: "Tunberg", birthYear: 1985, averageGrade: 100)

var schoolersArray = [myschooler1, myschooler2, myschooler3, myschooler4]
//1.2
var myString = String()
var myInteger = 0
func journal(array: [MyschoolerStruct]) {
    for index in array {
        myInteger += 1
        myString = "\(myInteger). \(index.name) \(index.secondName), birth year: \(index.birthYear), average grade: \(index.averageGrade)"
        var localString = String()
        localString.append(myString)
        print(myString)
    }
}
journal(array: schoolersArray)
//1.2
schoolersArray = schoolersArray.sorted { a, b  in
    return a.averageGrade > b.averageGrade
}
print(schoolersArray)
schoolersArray = schoolersArray.sorted(by: { a, b in
    if a.secondName == b.secondName {
        return a.name < b.name
    } else {
        return a.secondName < b.secondName
    }
})
print(schoolersArray)
var schoolersArray1 = schoolersArray
schoolersArray1[0].averageGrade = 7
schoolersArray1[0].birthYear = 1901
schoolersArray1[0].name = "Vova"
schoolersArray1[0].secondName = "Petrov"
schoolersArray1[1].averageGrade = 77
schoolersArray1[1].birthYear = 1951
schoolersArray1[1].name = "Jeka"
schoolersArray1[1].secondName = "Solovey"
schoolersArray1[2].averageGrade = 74
schoolersArray1[2].birthYear = 1951
schoolersArray1[2].name = "Leha"
schoolersArray1[2].secondName = "Zaycev"
schoolersArray1[3].averageGrade = 73
schoolersArray1[3].birthYear = 1991
schoolersArray1[3].name = "Vitya"
schoolersArray1[3].secondName = "Sumkin"
print(schoolersArray)
print(schoolersArray1)

class MyStudentStruct {
    var name: String
    var secondName: String
    var birthYear: Int
    var averageGrade: Int
    init(name: String, secondName: String, birthYear: Int, averageGrade: Int) {
        self.name = name
        self.secondName = secondName
        self.birthYear = birthYear
        self.averageGrade = averageGrade
    }
}
var myStudent1 = MyStudentStruct(name: "Alex", secondName: "Travolta", birthYear: 1965, averageGrade: 81)
var myStudent2 = MyStudentStruct(name: "Bob", secondName: "Graham", birthYear: 1973, averageGrade: 45)
var myStudent3 = MyStudentStruct(name: "Jack", secondName: "Tunberg", birthYear: 1935, averageGrade: 77)
var myStudent4 = MyStudentStruct(name: "Zorro", secondName: "Tunberg", birthYear: 1985, averageGrade: 100)

var studentsArray = [myStudent1, myStudent2, myStudent3, myStudent4]
//1.2
var myString1 = String()
var myInteger1 = 0
func journal(array: [MyStudentStruct]) {
    for index in array {
        myInteger1 += 1
        myString1 = "\(myInteger). \(index.name) \(index.secondName), birth year: \(index.birthYear), average grade: \(index.averageGrade)"
        var localString = String()
        localString.append(myString)
        print(myString)
    }
}
journal(array: studentsArray)
//1.2
studentsArray = studentsArray.sorted { a, b  in
    return a.averageGrade > b.averageGrade
}
print(studentsArray)
studentsArray = studentsArray.sorted(by: { a, b in
    if a.secondName == b.secondName {
        return a.name < b.name
    } else {
        return a.secondName < b.secondName
    }
})
print(studentsArray)
var studentsArray1 = studentsArray
studentsArray1[0].averageGrade = 7
studentsArray1[0].birthYear = 1901
studentsArray1[0].name = "Vova"
studentsArray1[0].secondName = "Petrov"
studentsArray1[1].averageGrade = 77
studentsArray1[1].birthYear = 1951
studentsArray1[1].name = "Jeka"
studentsArray1[1].secondName = "Solovey"
studentsArray1[2].averageGrade = 74
studentsArray1[2].birthYear = 1951
studentsArray1[2].name = "Leha"
studentsArray1[2].secondName = "Zaycev"
studentsArray1[3].averageGrade = 73
studentsArray1[3].birthYear = 1991
studentsArray1[3].name = "Vitya"
studentsArray1[3].secondName = "Sumkin"
print("\n")
print(studentsArray)
print("\n")
print(studentsArray1)
print("\n")
for index in studentsArray {
    print(index.name)
}
print("\n")
for index in studentsArray1 {
    print(index.name)
}
