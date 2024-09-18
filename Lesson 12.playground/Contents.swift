import UIKit

var greeting = "Hello, playground"

//Class | Struct

/* 4. Class
 
 class ClassName {
//properties of class
// methods of class
 
}
*/

class ParentsClass {
    var array = [String]()
    var name = ""
    var age = 20
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

class Son: ParentsClass {
    func method(name: String) {
        print("Hello, \(name)")
    }
}

let sonClass = Son(name: "Iron", age: 30) //экземпляр класса
sonClass.name //property of class
sonClass.method(name: "Jack") // method экземпляр класса

sonClass.name = "Bob"
sonClass.age = 25

//-------------------------Struct------------------------

struct NameStruct {
    var name: String
    var age: Int
}
var str = NameStruct(name: "Max", age: 20)
str.name = "Bob"

//HOMEWORK

//2) Создать класс родитель и 2 класса наследника.

class Parent {
    var name = [String]()
    var age = Int()
}

class Mother: Parent {
    func method(question: String) {
        //question = "Where is money?"
        print(question)
    }
}
class Father: Parent {
    func method(answer: String) {
        //answer = "Its my money!"
        print(answer)
    }
}
//3) Написать программу, в которой создать класс *House* в нем несколько свойств - *width*, *height* и несколько методов - *create*(выводит произведение свойств),*destroy*(отображает что дом уничтожен)и т.п.

class House {
    var width = Int()
    var height = Int()
    
    func create (width: Int, height: Int) {
        var multiple = width * height
        print(multiple)
    }
    func destroy() {
        print("This house is destroyed")
    }
}
//4) Создайте класс с методами, которые сортируют массив учеников.

class Pupils {
    //var pupils = [String]()
    func pupilsFunc (pupils: [String]) {
        var p = pupils.sorted()
        print(p)
    }
}
var pupils = [String]()

//5) Написать свою структуру и пояснить в комментариях - чем отличаются структуры от классов.

struct Point {
    var x: Int
    var y: Int
    
    mutating func moveBy (dx: Int, dy: Int) {
        x += dx
        y += dy
    }
}

var point1 = Point(x: 0, y: 0)
var point2 = point1 // copy of struct
point2.moveBy(dx: 5, dy: 5)

print(point1)
print(point2)
//Структуры лучше использовать для простых типов данных, которые должны быть копируемыми и не требуют наследования.
//Классы лучше использовать, когда вам нужно наследование или работа с ссылочными типами.

/*
 Дополнительно(на закрепление всех пройденных тем):
 Напишите простую программу, которая называет комбинации в покере.
 1) Записываем комбинации в массив.
 2) Если определённая комбинация - выводим соответствующую запись в print.

 Результат в консоли примерно такой:
 "У вас бубновый стрит флеш ".
 Подсказки:
 - для мастей можно использовать перечисления(enum),
 - В зависимости от комбинации - в консоли печатаем тот или иной ответ.
 - Комбинации можно взять отсюда:
 http://www.russiapokernews.com/poker-hand-ranking
 */
/*
//suits
enum Suit: String {
    case hearts = "червей"
    case diamonds = "бубен"
    case clubs = "треф"
    case spades = "пик"
}

//combinations in poker
enum PokerHand: String {
    case highCard = "старшая карта"
    case pair = "пара"
    case twoPair = "две пары"
    case threeOfAKind = "тройка"
    case straight = "стрит"
    case flush = "флеш"
    case fullHouse = "фул-хаус"
    case fourOfAKind = "каре"
    case straightFlush = "стрит-флеш"
    case royalFlush = "рояль-флеш"
}
//array of combinations
let pokerHands: [PokerHand] = [
        .highCard,
        .pair,
        .twoPair,
        .threeOfAKind,
        .straight,
        .flush,
        .fullHouse,
        .fourOfAKind,
        .straightFlush,
        .royalFlush
]

//func for sending combintion in console

func printPokerHand (hand: PokerHand, suit: Suit) {
    switch hand {
            case .highCard:
                print("У вас старшая карта.")
            case .pair:
                print("У вас пара.")
            case .twoPair:
                print("У вас две пары.")
            case .threeOfAKind:
                print("У вас тройка.")
            case .straight:
                print("У вас стрит.")
            case .flush:
                print("У вас флеш \(suit.rawValue).")
            case .fullHouse:
                print("У вас фул-хаус.")
            case .fourOfAKind:
                print("У вас каре.")
            case .straightFlush:
                print("У вас \(suit.rawValue) стрит-флеш.")
            case .royalFlush:
                print("У вас \(suit.rawValue) рояль-флеш.")
    }
}

let exampleHand = PokerHand.fourOfAKind
let exampleSuit = Suit.spades
printPokerHand(hand: exampleHand, suit: exampleSuit)
*/

import Foundation

// Определяем масти карт
enum Suit: String {
    case hearts = "червей"
    case diamonds = "бубен"
    case clubs = "треф"
    case spades = "пик"
}

// Определяем комбинации в покере
enum PokerHand: String {
    case highCard = "старшая карта"
    case pair = "пара"
    case twoPair = "две пары"
    case threeOfAKind = "тройка"
    case straight = "стрит"
    case flush = "флеш"
    case fullHouse = "фул-хаус"
    case fourOfAKind = "каре"
    case straightFlush = "стрит-флеш"
    case royalFlush = "рояль-флеш"
}

// Класс для определения и вывода комбинации
class PokerHandEvaluator {
    var hand: PokerHand
    var suit: Suit

    init(hand: PokerHand, suit: Suit) {
        self.hand = hand
        self.suit = suit
    }

    func printPokerHand() {
        switch hand {
        case .highCard:
            print("У вас старшая карта.")
        case .pair:
            print("У вас пара.")
        case .twoPair:
            print("У вас две пары.")
        case .threeOfAKind:
            print("У вас тройка.")
        case .straight:
            print("У вас стрит.")
        case .flush:
            print("У вас флеш \(suit.rawValue).")
        case .fullHouse:
            print("У вас фул-хаус.")
        case .fourOfAKind:
            print("У вас каре.")
        case .straightFlush:
            print("У вас \(suit.rawValue) стрит-флеш.")
        case .royalFlush:
            print("У вас \(suit.rawValue) рояль-флеш.")
        }
    }
}

// Массив комбинаций
let pokerHands: [PokerHand] = [
    .highCard, .pair, .twoPair, .threeOfAKind, .straight,
    .flush, .fullHouse, .fourOfAKind, .straightFlush, .royalFlush
]

// Пример использования
let exampleHand = PokerHand.straightFlush
let exampleSuit = Suit.diamonds

let evaluator = PokerHandEvaluator(hand: exampleHand, suit: exampleSuit)
evaluator.printPokerHand()

