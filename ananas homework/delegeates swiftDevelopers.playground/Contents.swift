import UIKit

var greeting = "Hello, playground"
//Deleagate

//MARK: - Prorocol
protocol RouterDelegate {
    var nameID: [String] {get set}
    func saveName(name: String, text: String)
}

protocol UsersProtocol {
    var name: String {get set}
    var age: Int {get set}
    
    var delegate:RouterDelegate? {get set}
    init(name: String, age: Int, delegate: RouterDelegate)
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
    
    var delegate: (any RouterDelegate)?
    
    func sendMail(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
    required init(name: String, age: Int, delegate: any RouterDelegate) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}
//MARK: --------------------------------------------------------------
let routerDelegate = Router()
let user = User(name: "John", age: 23, delegate: routerDelegate)
user.sendMail(name: "Sergey", text: "Hello, Sergey")
user.sendMail(name: "mama", text: "mama im ok")
routerDelegate.nameID


//HOMEWORK
//protocols
protocol LetsStartWritingCode {
    var time: Int {get}
    var codeAmount: Int {get}
    func writeCode()
}

protocol LetsStopWritingCode {
    func stopCoding()
}
//classes
class Developer: LetsStartWritingCode, LetsStopWritingCode {
    var time: Int
    var codeAmount: Int
    func writeCode() {
        print("разработка началась. пишем код")
    }
    func stopCoding() {
        print("работа закончена. Сдаю в тестирование")
    }
    var amountOfProgrammers: Int
    
    enum specOfProgrammer {
        case iOS
        case Android
        case web
    }
    
    init(time: Int, codeAmount: Int, amountOfProgrammers: Int) {
        self.time = time
        self.codeAmount = codeAmount
        self.amountOfProgrammers = amountOfProgrammers
    }
}


var dev = Developer(time: 40, codeAmount: 500, amountOfProgrammers: 5)
dev.writeCode()
dev.stopCoding()
