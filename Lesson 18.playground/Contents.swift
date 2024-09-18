import UIKit

var greeting = "Hello, playground"
//опциональные цепочки
class Adress {
    let street = "Tverskaya"
    let number = 18
}
class Home {
    let adress = Adress()
    let room: Int? = 3
    var parking: Parking? = Parking()
    func printRooms() {
        print("The number of rooms is \(room!)")
    }
}
struct Parking {
    var carPlace = 5
}
class Parents {
    var cars: [String]? = ["Mersedes"]
    var home: Home? = Home()
}
let parents = Parents()
parents.cars![0]
print(parents.home!)
parents.home!.parking!.carPlace
parents.home?.parking?.carPlace
if (parents.home?.parking?.carPlace = 7) != nil {
    print("property setted")
} else  {
    print("property not setted")
}
parents.cars?[0]
if (parents.home?.printRooms()) != nil {
    print("комнату уже можно печатать")
} else {
    print("комнату нельзя печатать")
}
//HOMEWORK

/*
 3) Сделать класс Люди, класса будут проперти родственники, соседи и тд (всё опционально).
 4)Создать нужно более 25 человек.
 5)Посчитать, сколько у этого человека двоюродных Братьев, троюродных Сестёр, Теть, Дядь, И так далее
 6)Создать касс животных и проперти - корова, коза, собака и тд
 7)Создать класс растения и проперти - трава, цветы и тд
 8)Положить их всех в массив и отсортировать по алфовиту и по классу - Люди - животные - растения

 */
//class People {
//    var name: String
//    var father: Man?
//    var mother: Woman?
//    init(name: String, father: Man? = nil, mother: Woman? = nil) {
//        self.name = name
//        self.father = father
//        self.mother = mother
//    }
//}
//class Man: People {
//}
//class Woman: People {
//}
//
//var people1 = Woman(name: "Skylar")
//var people2 = Man(name: "Wolter")
//var people3 = People(name: "Wolter Junior")
//people3.mother = people1
//people3.father = people2

class People {
    var name: String
    var sister: Sister?
    var brother: Brother?
    var father: Father?
    var mother: Mother?
    var neighbour: [Neighbour]?
    init(name: String, sister: Sister? = nil, brother: Brother? = nil, neighbour: [Neighbour]? = nil) {
        self.name = name
        self.sister = sister
        self.brother = brother
        self.neighbour = neighbour
    }
}
    class Sister: People {
    }
    class Brother: People {
    }
    class Father: People {
    }
    class Mother: People {
    }
    class Neighbour: People {
    }

    var sister1 = Sister(name: "Oksana")
    var sister2 = Sister(name: "Sasha")
    var brother1 = Brother(name: "Vitya")
    var brother2 = Brother(name: "Vanya")
    var father = Father(name: "Igor")
    var mother = Mother(name: "Valya")
    var neighbour1 = Neighbour(name: "Jack")
    let neighbour2 = Neighbour(name: "John")
let neighbour3 = Neighbour(name: "Emily")
let neighbour4 = Neighbour(name: "Sarah")
let neighbour5 = Neighbour(name: "Michael")
let neighbour6 = Neighbour(name: "Laura")
let neighbour7 = Neighbour(name: "David")
let neighbour8 = Neighbour(name: "Anna")
let neighbour9 = Neighbour(name: "James")
let neighbour10 = Neighbour(name: "Maria")
let neighbour11 = Neighbour(name: "Robert")
let neighbour12 = Neighbour(name: "Sophia")
let neighbour13 = Neighbour(name: "William")
let neighbour14 = Neighbour(name: "Olivia")
let neighbour15 = Neighbour(name: "Richard")
let neighbour16 = Neighbour(name: "Isabella")
let neighbour17 = Neighbour(name: "Thomas")
let neighbour18 = Neighbour(name: "Mia")
let neighbour19 = Neighbour(name: "Charles")
let neighbour20 = Neighbour(name: "Amelia")
let neighbour21 = Neighbour(name: "George")

// Добавление всех соседей в массив
let neighbours = [neighbour1, neighbour2, neighbour3, neighbour4, neighbour5, neighbour6, neighbour7, neighbour8, neighbour9, neighbour10, neighbour11, neighbour12, neighbour13, neighbour14, neighbour15, neighbour16, neighbour17, neighbour18, neighbour19, neighbour20, neighbour21]
let brothers = [brother1, brother2]
sister1.mother? = mother
sister1.father? = father
sister1.sister? = sister2
sister1.neighbour? = neighbours

print("This sister name is \(sister2.name), she have a sister, her name is \(sister1.name), she has \(brothers.count) brother, their name is \(brothers[0].name) and \(brothers[1].name), she has a mother, her name is \(mother.name), she has a father, his name is \(father.name) and she has an \(neighbours.count) neighbours.")
//6)Создать касс животных и проперти - корова, коза, собака и тд
class Animals {
    var name: String
    var cow: Cow?
    var goat: Goat?
    var dog: Dog?
    init(name: String, cow: Cow? = nil, goat: Goat? = nil, dog: Dog? = nil) {
        self.name = name
        self.cow = cow
        self.goat = goat
        self.dog = dog
    }
    }
class Cow: Animals {
}
class Goat: Animals{
}
class Dog: Animals {
}

class Flora {
    var name: String
    var grass: Grass?
    var flower: Flower?
    init(name: String, grass: Grass? = nil, flower: Flower? = nil) {
        self.name = name
        self.grass = grass
        self.flower = flower
    }
}
class Grass: Flora {
}
class Flower: Flora {
}

var myCow = Cow(name: "Murka")
var myDog = Dog(name: "Sharik")
var myGoat = Goat(name: "Milka")
var myFlower = Flower(name: "Rose")
var myGrass = Grass(name: "Indika")
var myMassive : [Any] = []
myMassive.append(contentsOf: neighbours)
myMassive.append(contentsOf: [myCow, myDog, myGoat, myGrass, myFlower])

var newArray = myMassive.sorted {
    
    if var obj1 = $0 as? Flora, var obj2 = $1 as? Flora {
        obj1.name < obj2.name
    }
    if var obj1 = $0 as? People, var obj2 = $1 as? People {
        obj1.name < obj2.name
    }
    if var obj1 = $0 as? Animals, var obj2 = $1 as? Animals {
        obj1.name < obj2.name
    }
    return false
}
print("Its \(newArray)")


/*
 
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
 
 */
