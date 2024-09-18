import UIKit

var greeting = "Hello, playground"
//Delegate

//MARK: - Protocol
protocol RouterDelegate {
    var nameID: [String] {get set}
    func saveName(name: String, text: String)
}
protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}
    var delegate: RouterDelegate? {get set}
    init(name: String, age: Int, delegate: RouterDelegate?)
}

//MARK: - Class

class Router: RouterDelegate {
    var nameID: [String] = []
    func saveName(name: String, text: String) {
        nameID.append(name)
        nameID.append(text)
    }
}
class User: UsersProtocol {
    var name: String
    var age: Int
    var delegate:RouterDelegate?
    func sendMail(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
    required init(name: String, age: Int, delegate: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}

let routerDelegate = Router()
let user = User(name: "John", age: 23, delegate: routerDelegate)
user.sendMail(name: "Sergey", text: "Hello Sergey")
user.sendMail(name: "mama", text: "mama im ok")

routerDelegate.nameID
//HOMEWORK
/*
 ) Создать 2 протокола:
 1- "Начинай писать код" со свойствами: время, количество кода.
 И функцией writeCode()
 2- "Заканчивай писать код" с функцией: stopCoding()
 И класс: Разработчик, у которого есть свойства - количество программистов, специализации(ios, android, web).
 Разработчику подключаем два этих протокола.
 Задача: вывести в консоль сообщения - "разработка началась. пишем код" и "работа закончена. Сдаю в тестирование".
 */
//MARK: - Protocol
protocol letsStartCoding {
    var time: Int {get set}
    var quantityOfCode: Int {get set}
    func writeCode()
}
protocol letsStopCoding {
    func stopCoding()
}
enum Specialisations {
    case ios
    case android
    case web
}

//MARK: - Class
class Developer: letsStartCoding, letsStopCoding {
    var time: Int
    var quantityOfCode: Int
    
    func writeCode() {
        "Разработчка началась, пишем код"
    }
    func stopCoding() {
        "Работа закончена. Сдаю в тестирование"
    }
    var devAmount: Int
    var specialisation:Specialisations
    init(time: Int, quantityOfCode: Int, devAmount: Int, specialisation: Specialisations) {
        self.time = time
        self.quantityOfCode = quantityOfCode
        self.devAmount = devAmount
        self.specialisation = specialisation
        print("Time: \(time) hours. Symbols: \(quantityOfCode), Specialisation: \(specialisation), amount of developers: \(devAmount)")
    }
}

var dev = Developer(time: 5, quantityOfCode: 66662, devAmount: 3, specialisation: .ios)
dev.writeCode()
dev.stopCoding()

