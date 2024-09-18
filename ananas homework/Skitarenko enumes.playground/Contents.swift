import UIKit

var greeting = "Hello, playground"

enum Direction: String {
    case Left = "Left!"
    case Right = "Right!"
    case noName = "1"
}

enum Action {
    case Walk(meters: Int)
    case Run (meters: Int, speed: Double)
    case Stop
    case Turn(direction: Direction)
}

var action = Action.Run(meters: 20, speed: 15.0)
var direction = Direction(rawValue: "1")!
/*
 1. Создать энум с шахматными фигруами (ĸороль, ферзь и т.д.). Каждая фигура должна иметь цвет (associated values) белый либо черный (надеюсь намеĸ понят, какого типа должен быть цвет), а таĸ же буĸву колонки и цифру ряда для позиции. Фактически создав инстанс (экземпляр энума), который будет являться шахматной фигурой, и который будет содержать associated values: Цвет и позицию на доске.
 Создайте (инициализируйте) пару фигур с расположением на досĸе, таĸ, чтобы черному ĸоролю был мат :)
 Сделать надо только функционал, без отображения на доске.
 */

enum Color {
    case Black
    case White
}


enum Figures{
    case King(color: Color, positionX: String, positionY: Int)
    case Queen(color: Color, positionX: String, positionY: Int)
    case Bishop(color: Color, positionX: String, positionY: Int)
    case Knight(color: Color, positionX: String, positionY: Int)
    case Rook(color: Color, positionX: String, positionY: Int)
    case Paws(color: Color, positionX: String, positionY: Int)
    var rawValue: String {
        switch self {
        case .King: return "King" //король
        case .Queen:
            return "Queen" //ферзь
        case .Bishop:
            return "Bishop" // слон
        case .Knight:
            return "Knight" // конь
        case .Rook:
            return "Rook" // ладья
        case .Paws:
            return "Paws" // пешка
        }
    }
}

var example = Figures.King(color: .Black, positionX: "h", positionY: 4)
//мат
var blackKing = Figures.King(color: .Black, positionX: "a", positionY: 8)
var whiteKing = Figures.King(color: .White, positionX: "d", positionY: 3)
var whiteQueen = Figures.Queen(color: .White, positionX: "c", positionY: 7)
/*
 2. Поместите эти фигуры в массив фигур. Сделайте таĸ, чтобы энумовсĸие значения имели
 rawValue типа String для соотвевия, например королю - "King" и т.д.. Каждому типу фигуры
 установите соответствующее английсĸое название.
 Создайте первую фунĸцию, ĸоторая принимает одну фигуру, выводит в ĸонсоль
 (теĸстово, без юниĸода) название фигуры, цвет и
 расположение.
 Создайте вторую функцию, которая принимает массив фигур и в цикле вызывает первую функцию для печати всех фигур. Например: "белая пешка - а2"
 */
func firstFunc(figure: Figures) {
    switch figure {
    case .King(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    case .Queen(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    case .Bishop(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    case .Knight(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    case .Rook(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    case .Paws(color: let color, positionX: let positionX, positionY: let positionY):
        print("\(color), \(figure.rawValue), \(positionX), \(positionY)")
    }
}
//firstFunc(figure: whiteKing)
var figures = [blackKing, whiteKing, whiteQueen]

func secondFunc(figuresArray: [Figures]) {
    for index in figuresArray {
        firstFunc(figure: index)
    }
}
secondFunc(figuresArray: figures)
/*
 3. Создайте функцию, которая будет рисовать эту доску используя юникоды. 
 Функция принимает массив фигур и рисовала доску в принте. Там где есть фигура - её значек, а там где нет фигуры - пустая клетка определенного цвета.
 */
func drawChessboard1(arrayFigures: [Figures]) {
    let whiteSquare = "⬜"
    let blackSquare = "⬛"
    let blackKing = "♚"
    let whiteKing = "♔"
    let whiteQueen = "♛"
    
    for row in (1..<9).reversed() {
        var rowString = "\(row)"
        
            for col in 1..<9 {
                
                if (row + col) % 2 == 0 {
                    rowString += whiteSquare
                }  else
                {
                    rowString += blackSquare
                }
            }
        
            print(rowString)
        }
    print(" A  B C D E F  G H")
}

func drawChessboard(arrayFigures: [Figures]) {
    let whiteSquare = "⬜"
    let blackSquare = "⬛"
    let blackKing = "♚"
    let whiteKing = "♔"
    let whiteQueen = "♛"
    
    
    
}
drawChessboard1(arrayFigures: figures)
