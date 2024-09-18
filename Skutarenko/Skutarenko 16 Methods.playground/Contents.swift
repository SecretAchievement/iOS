import UIKit

var greeting = "Hello, playground"

struct Point1 {
    var x: Int
    var y: Int
    mutating func moveByX(x: Int, andY y: Int) {
        self.x += x
        self.y += y
    }
    
}

enum Color {
    static func numberOfElements() -> Int {
        self.print()
        return 2
    }
    case White
    case Black
    mutating func invert() -> Color {
//        if self == Color.White {
//            self = Color.Black
//        } else {
//            self = Color.White
//        }
        self = self == Color.White ? Color.Black : Color.White
        self.print()
        Color.print()
        return self
    }
    func print() {
        if self == Color.White {
            Swift.print("White")
        } else {
            Swift.print("Black")
        }
        
    }
        static func print() {
            Swift.print("enum")
    }
}

var c = Color.White
c.print()
c.invert()
c.print()
c.invert().print()
c.invert().print()
c.invert().print()
c.invert().print()
print(Color.numberOfElements())

func move(point: inout Point1, byX x: Int, andY y: Int) -> Point1 {
    point.x += x
    point.y += y
    return point
}

var p1 = Point1(x: 1, y: 1)
var p2 = Point1(x: 1, y: 2)

p1 = move(point: &p1, byX: 2, andY: 4)
p1.moveByX(x: 5, andY: 7)
p2
//HOMEWORK
//1
// создать тип - комната с параметрами длина и ширина
// создать тип - персонаж с параметрами позиции в комнате (можно еще добавить пару свойств типа имени или чего сами хотим)
// реализовать функцию которая красиво распечатывает в консоле комнату и персонажа в ней (границы и персонаж внутри


let LengthRoom = 10 //rooms length
let HeightRoom = 10 // rooms height
let Void = "⬜ "
let Chests = "🟥"
let Humans = "👤"
let TheEnd = "⬛"

struct Point {
    var x: Int {
        didSet {
            x = x > 0 && x <= LengthRoom ? x : oldValue
        }
    }
    var y: Int {
        didSet {
            y = y > 0 && y <= LengthRoom ? x : oldValue
        }
    }
}
class Chest {
    var point: Point //coordinate
    init(point: Point) {
        self.point = point
    }
    
    func toMove (x: Move) { // метод движения вызывается только при движении игроком
        switch x {
        case .Back:
            self.point.y -= 1
        case .Forward:
            self.point.y += 1
        case .Left:
            self.point.y -= 1
        case .Right:
            self.point.y += 1
        }
    }
}
enum Move {
    case Forward
    case Back
    case Right
    case Left
}
class Avatar {
    
    var point: Point //координата
    var name: String //просто надо по заданию
    var lvl: Int //просто надо по заданию
    init(point: Point, name: String, lvl: Int) {
        self.point = point
        self.name = name
        self.lvl = lvl
    }
    
    func toMove (x: Move, pointChest: Chest) {
        var moveInChes : Move // в какой сторону будет двигаться ящик
        switch (x, pointChest.point.y, pointChest.point.x){ // (движение игрока, координата Х ящика, У ящика)
        case (.Back, var chestY, var chesX) where chestY != 1 || chesX != self.point.x:
            self.point.y = 1 // :двигайся вниз, если ящик не нижем пределе или ты стоишь сбоку от него
            moveInChes = .Back
        case (.Forward, var chestY, var chesX) where chestY != HeightRoom || chestY != self.point.x:
            self.point.y += 1 // :двигайся вверх, если ящик не на верхнем пределе или ты стоишь сбоку от него
            moveInChes = .Forward
        case (.Left, var chestY, var ches) where ches != 1 || chestY != self.point.y:
            self.point.x -= 1 // :двигайся влево, если ящик не на нижем пределе слева или ты стоишь не на одном уровне
            moveInChes = .Left
        case (.Right, var chestY, var chesX) where chestY != LengthRoom || chestY != self.point.y:
            self.point.x += 1 // :вправо, если ящик не на максимально пределе справа или ты стоишь не на одном уровне
            moveInChes = .Right
        default: moveInChes = .Back; break // нужно было обязательно инициировать moveInChes перед его вызовом
        }
            if (self.point.x, self.point.y) == (pointChest.point.x, pointChest.point.y) {
                pointChest.toMove(x: moveInChes) // если после движения игрока координаты совпали
                // то ящик передвигается в туже сторону
            }
        }
    }

