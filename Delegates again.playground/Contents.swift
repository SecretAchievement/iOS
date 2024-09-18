import UIKit

var greeting = "Hello, playground"

//delegate again

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
    
    var delegate: RouterDelegate?
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
//Trying Delegate
//MARK: protocols

protocol CustomerDelegate {
    var customerNameID: [String] {get set}
    func saveName(name: String, text: String)
}
protocol CustomersProtocol {
    var name: String {get set}
    var age: Int {get set}
    var delegate: CustomerDelegate? {get set}
    
}
class Customer: CustomerDelegate {
    var customerNameID: [String] = []
    func saveName(name: String, text: String) {
        customerNameID.append(name)
        customerNameID.append(text)
    }
}
class CustomerClass: CustomersProtocol {
    var name: String
    var age: Int
    var delegate: CustomerDelegate?
    func goToShopping(name: String, text: String) -> Bool {
        delegate?.saveName(name: name, text: text)
        return true
    }
    required init(name: String, age: Int, delegate: CustomerDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}
let customerDelegate = Customer()
let customer = CustomerClass(name: "Igor", age: 12, delegate: customerDelegate)
customer.goToShopping(name: "Sveta", text: "Milk")
customerDelegate.customerNameID
//HOMEWORK
//MARK: protocols
protocol LetsStartCoding {
    var time: Int {get set}
    var amountOfCode: Int {get set}
    func writeCode()
}
protocol LetsStopCoding {
    func stopCoding()
}
class Developer: LetsStartCoding, LetsStopCoding {
    var amountOfProgrammers: Int
    var specialisations: String
    var time: Int
    var amountOfCode: Int
    func writeCode() {
        "Lets start coding!!"
    }
    func stopCoding() {
        "Lets stop coding!!!!"
    }
    init(amountOfProgrammers: Int, specialisations: String, time: Int, amountOfCode: Int) {
        self.amountOfProgrammers = amountOfProgrammers
        self.specialisations = specialisations
        self.time = time
        self.amountOfCode = amountOfCode
        print("Время на работу: \(time) часов, количество сделанного: \(amountOfCode), спциализация сотрудника: \(specialisations), количество специалистов: \(amountOfProgrammers)")
    }
}
var dev = Developer(amountOfProgrammers: 4, specialisations: "iOS", time: 4323322, amountOfCode: 5883583492943)
dev.writeCode()
dev.stopCoding()
