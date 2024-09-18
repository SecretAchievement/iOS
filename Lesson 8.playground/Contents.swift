import UIKit

var greeting = "Hello, playground"

//switch
//if


//for i in 0...200 {
//    if i == 10 {
//        break
//    }
//    print(i)
//}

//for cicle1 in 0...200 {
//        if cicle1 == 15 {
//            break
//        }
//    print(cicle1)
//}



//var day = 7
//if day == 1 {
//    print("work day")
//} else if day == 2 {
//    "work day"
//} else if day == 3 {
//    print("work day")
//} else if day == 4 {
//    print("work day")
//} else if day == 5 {
//    print("work day")
//} else if day == 6 {
//    print("holyday")
//} else if day == 7 {
//    print("holiday")
//}
//
//switch day {
//case 1...4:
//    print("worktime")
//case 5:
//    print("its friday")
//case 6...7:
//    print("holiday")
//default:
//    break
//}




let nameWork = "Swift Dev"
let age = 51
let peopleSex = "w"


switch (nameWork, age) {
case (_, 50...999999999):
    print("you are so old")
case (_, 1...17):
    print("you are so young")
case ("Swift dev", 18...50) where peopleSex == "w":
    print("no girls")
case("", 18...50) where peopleSex == "m":
    print("welcome to the job")
case let (name, age):
    print("\(name) at \(age) year?")// value binding
default:
    print("please set normal values")
}

//cicle in cicle
let cicle = 200
//
//switch cicle {
//case 1...200:
//    print("wow")
//}
for cicle1 in 0...200 {
    print(cicle1)
    for cicle2 in 0...200 {
        if cicle2 == 15 {
            print(cicle1 + cicle2)
            break
        }
    }
 break
}


//homework 4
let myAge: Int = 5
if myAge <= 6 {
    print("go to the kindergarden")
} else if myAge >= 7 && myAge <= 17 {
    print("go to the school")
} else if myAge >= 17 && myAge <= 70 {
    print("go to work")
} else if myAge >= 70 {
    print("go retire")
}
switch myAge {
case 1...6:
    print("go to the kindergarden")
case 7...17:
    print("go to the school")
case 17...70:
    print("go to work")
default:
    print("go retire")
}
//homework 6
let grade = 12
if grade <= 6 {
    print("you are stupid")
} else if grade >= 6 {
    print("you are cool")
}
switch grade {
case 1...6:
    print("you are stupid")
default:
    print("you are cool")
}

let family = ["Tom", "Ben", "Alan", "Kat", "Jack", "Bob", "Trent", "John", "Victor", "Lana"]
print(family.sorted())
 
