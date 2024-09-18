import UIKit

var greeting = "Hello, playground"
//ДЗ 1
// создать тип - комната с параметрами длина и ширина
// создать тип - персонаж с параметрами позиции в комнате (можно еще добавить пару свойств типа имени или чего сами хотим)
// реализовать функцию которая красиво распечатывает в консоле комнату и персонажа в ней (границы и персонаж внутри

let LengthRoom = 10 //rooms length
let HeightRoom = 10 // rooms height
let Void = "⬜ "
let Chests = "🟥"
let Humans = "👤"
let TheEnd = "⬛"
//MARK: - Point
struct Point {
    var x: Int {
        didSet {
            x = x > 0 && x <= LengthRoom ? x : oldValue //проверка чтоб не вылетел за пределы поля
        }
    }
    var y: Int {
        didSet {
            y = y > 0 && y <= LengthRoom ? y : oldValue //проверка чтоьб не вылетел за пределы поля
        }
    }
}
//MARK: - Chest
class Chest { //ящик
    var point: Point // координата ящика
    init(point: Point) {
        self.point = point
    }
    func toMove (x: Move) {
        switch x {
        case .Forward: self.point.y -= 1
        case .Back: self.point.y += 1
        case .Right: self.point.x -= 1
        case .Left: self.point.x += 1
           }
        }
    }
//move
enum Move { //движение объекта
    case Forward
    case Back
    case Right
    case Left
}
//MARK: - Avatar

class Avatar { //аватар это персонаж
    var point: Point //координата
    var name: String //по заданию надо
    var lvl: Int //надо по заданию
    init(point: Point, name: String, lvl: Int) {
        self.point = point
        self.name = name
        self.lvl = lvl
    }
    //собственно функция
    func toMove(x: Move, pointChest: Chest) {//метод движения с проверкой движения ящика
        var moveInChest: Move //в какую сторону будет двигаться ящик
        
        switch (x, pointChest.point.y, pointChest.point.x) {
        case (.Back, var chestY, var chestX) where chestY != 1 || chestX != self.point.x:
            self.point.y -= 1 //двигайся вниз, если ящик не на нижнем пределе или ты стоишь сбоку от него
            moveInChest = .Back
        case (.Forward, var chestY, var chestX) where chestY != HeightRoom || chestX != self.point.x:
            self.point.y += 1 //двигайся вверх, если ящик не на верхнем пределе или ты стоишь сбоку от него
            moveInChest = .Forward
        case (.Left, var chestY, var chestX) where chestX != 1 || chestY != self.point.y:
            self.point.x -= 1 //влево, если ящик не на максимальном пределе слева или ты стоишь на одном уровне
            moveInChest = .Left
        case (.Right, var chestY, var chestX) where chestX != LengthRoom || chestY != self.point.x:
            self.point.x += 1 //вправо, если ящик не на максимальном пределе справа или ты стоишь на на одном уровне
            moveInChest = .Right
        default: moveInChest = .Back; break //нужно обязательно инициировать moveInChest перед его вызовом
        }
        if (self.point.x, self.point.y) == (pointChest.point.x, pointChest.point.y) {
            pointChest.toMove(x: moveInChest) //если после джвижения игрока координаты совпали, то ящик передвигается в ту же сторону
        }
    }
}
var avatar1 = Avatar(point: Point(x: 1, y: 2), name: "Jack", lvl: 0)
var chest1 = Chest(point: Point(x: 2, y: 3))
//2
// добавить метод персонажу идти (например moveTo) в который передаем enum (лево/право/верх/вниз)
// персонаж должен перемещаться по комнате и сбоку отображать в консоле его перемещение
// реализовать правило по которому персонаж не сможет выйти за пределы комнаты
func printArea (pointHuman: Point, pointChest: Point) {
    var area = ""
    var arrArea = [String]()
    for i in 1...LengthRoom {
        for j in 1...HeightRoom {
            if i == pointHuman.y && j == pointHuman.x {
                area += Humans
            } else if i == pointChest.y && j == pointChest.x {
                area += Chests
            } else if j == HeightRoom-1 && i == LengthRoom-2 {
                area += TheEnd
            } else {
                area += Void
            }
            if j == HeightRoom {
                arrArea.append(area)
                area = ""
            }
        }
    }
    for i in 0..<arrArea.count {
        print(arrArea[arrArea.count-i-1])
    }
    print("")
}
print("Начальное поле: ")
printArea(pointHuman: avatar1.point, pointChest: chest1.point)
print("итого:")
//путь до точки
avatar1.toMove(x: .Forward, pointChest: chest1) //1 вверх
for _ in 0..<7 {
    avatar1.toMove(x: .Right, pointChest: chest1) //7 раз вправо
}
avatar1.toMove(x: .Back, pointChest: chest1)//обходим
avatar1.toMove(x: .Right, pointChest: chest1) //ящик
for _ in 0..<5 {
    avatar1.toMove(x: .Forward, pointChest: chest1) //5 вверх
}
printArea(pointHuman: avatar1.point, pointChest: chest1.point)
//пытаемся упереться в стену
print("попыки выйти вместе с ящиком за стену")
for _ in 0..<100 {
    avatar1.toMove(x: .Forward, pointChest: chest1) //100 вверх
}
for _ in 0..<100 {
    avatar1.toMove(x: .Left, pointChest: chest1) //100 влево
}
printArea(pointHuman: avatar1.point, pointChest: chest1.point)
