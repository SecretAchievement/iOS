import UIKit
import Foundation
var greeting = "Hello, playground"

struct Worker {
    //firstName
    var firstName: String {
        willSet {
            print("will set " + newValue + "instead of " + firstName)
        }
        didSet {
            print("did set " + firstName + "insted of " + oldValue)
            firstName = firstName.capitalized
        }
    }
    //lastName
    var lastName: String {
        didSet {
            lastName = lastName.capitalized
        }
    }
    //fullName
    var fullName: String {
        get {
            return firstName + " " + lastName
        }
        set {
           print("fullName wants to be set to " + newValue)
            let words = newValue.components(separatedBy: " ")
            if words.count > 0 {
                firstName = words[0]
            }
            if words.count > 1 {
                lastName = words[1]
            }
        }
    }
}

var worker = Worker(firstName: "Alex", lastName: "Skutarenko")
worker.firstName = "Bob"
worker.lastName
worker.fullName = "Ivan Ivanov"
worker.fullName
//HOMEWORK
//1
struct birthYear {
    var day: Int
    var month: Int
    var year: Int
}
struct Student {
    var firstName: String
    var lastName: String
    var fullName: String
    var birthYear: birthYear
    var age: String {
        var localString: String = ""
        localString = "\(firstName) have an age: \(2024 - birthYear.year)"
        print(localString)
        return localString
    }
    var studyYears: String {
        var localString = ""
        if (2024 - birthYear.year) > 6 {
            localString = "\(firstName) studyed \(2018 - birthYear.year) years"
        } else {
            localString = "\(firstName) studyed 0 years"
        }
        return localString
    }
}
var birth1 = birthYear(day: 22, month: 01, year: 2019)
var student1 = Student(firstName: "Dorian", lastName: "Gray", fullName: "Dorian Gray", birthYear:birth1)
student1.age
student1.studyYears
/*
 Создать струĸтуру "отрезоĸ", у ĸоторой два свойства - точĸа "А" и точĸа "В", ĸоторые в свою очередь тоже струĸтуры (не стандартные, а наши собственные).
 Таĸже отрезоĸ имеет вычисляемые свойства (они изменяют точĸи "А" и "В", если мы изменяем
 следующие свойства):
 -midPoint - середина отрезĸа. При её изменении, отрезоĸ смещается на тот же вектор целиком, т.е. точку А и точку В смещаем одинаково, как и мид-поинт.
 -длина отрезĸа. При изменении, точĸа "А" остается, а точĸа "В" изменяется.
 */

struct Point {
    var x: Double
    var y: Double
}

struct Line {
       var pointA: Point
       var pointB: Point
    
    var midPoint: Point {
        get { Point(x: (pointA.x + pointB.y)/2, y: (pointA.y + pointB.y)/2)
        }
        set {
            let difX = newValue.x - newValue.x
                        let difY = newValue.y - newValue.y
                        pointA.x += difX
                        pointA.y += difY
        }
    }
    
}

var myLine = Line(pointA: Point(x: 1.1, y: 2.3), pointB: Point(x: 1.7, y: 2.9))
myLine.midPoint
myLine.midPoint = Point(x: 12, y: 15)
myLine.pointA.y












//struct Point {
//    var x: Double
//    var y: Double
//}
//
//struct Section {
//    var pointA: Point
//    var pointB: Point
//    
//    var midPoint: Point {
//        get {
//            Point(x: (pointA.x + pointB.y)/2, y: (pointA.y + pointB.y)/2)
//        }
//        set {
//            let difX = newValue.x - newValue.x
//            let difY = newValue.y - newValue.y
//            pointA.x += difX
//            pointA.y += difY
//        }
//    }
//    
//    var length: Double {
//        get {
//            sqrt(pow(pointB.x - pointA.x, 2) + pow(pointB.y - pointA.y, 2))
//        }
//        set {
//            let tmp = length
//            pointB.x = pointA.x + (newValue * (pointB.x - pointA.x)) / tmp
//            pointB.y = pointA.y + (newValue * (pointB.y - pointA.y)) / tmp
//        }
//    }
//}
//var mySection = Section(pointA: Point(x: 0.0, y: 0.0), pointB: Point(x: 4.0, y: 3.0))
//mySection.length
//mySection.midPoint
//mySection.midPoint = Point(x: 3.0, y: 1.0)
//mySection
//mySection.length = 10
//mySection.pointB
