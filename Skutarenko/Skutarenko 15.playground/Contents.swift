import UIKit

var greeting = "Hello, playground"

let MaxNameLength = 50

//MARK: Human
class Human {
    var name: String {
        didSet {
            if name.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    lazy var storyOfMyLife: String! = "This is a story of my entire life..."
    
    
    
    var age: Int {
        didSet {
            if age > Human.maxAge {
                age = oldValue
            }
        }
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    class var maxAge: Int {
        return 100
    }
}
let human = Human(name: "Peter", age: 40)
human
human.storyOfMyLife
human

//MARK: - Direction
enum Direction {
    static let enumDescription = "Directions in the game"
    static let number = 0
    case Left
    case Right
    case Top
    case Bottom
    
    var isVertical: Bool {
        return self == .Top || self == .Bottom
    }
    var isHorizontal: Bool {
        return !isVertical
    }
}
let d = Direction.Top
d.isVertical
d.isHorizontal
Direction.enumDescription
//MARK: Cat
struct Cat {
    static let maxAge = 20
    var name: String {
        didSet {
            if name.count > MaxNameLength {
                name = oldValue
            }
        }
    }
    
    static var totalCats = 0
    
    var age: Int {
        didSet {
            if age > Cat.maxAge {
                age = oldValue
            }
        }
    }
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Cat.totalCats += 1
    }
}
Cat.maxAge
var cat = Cat(name: "Whiten", age: 10)
var cat1 = Cat(name: "Whiten1", age: 10)
var cat2 = Cat(name: "Whiten2", age: 10)
human.age = 1000
cat.age = 50
Cat.totalCats
cat.name = "jhfdbvkjdfjvbdkjlfbvdklbfkjvbsdjkfbv"
//HOMEWORK
//1
struct fileDescription {
    var path: String
    var fileName: String
    static var maxFileSize = 256.01
    static var folderPath = "C:/Folder/File"
    var isHide: Bool
    var fileContents: String
}
//2

enum ColorGamma: Int {
    static let startValue = 0x000000
    static let endValue = 0xFFFFFF
    static let totalColors = endValue - startValue
    
    case blue = 0x0000FF

}
ColorGamma.startValue
ColorGamma.endValue
ColorGamma.totalColors
//3
class ManKind {
    var MaxAge = 15
    var MinAge = 3
    var minWeight = 20
    var minHeight = 110
    class var maxSymbols: Int {
        return 100
    }
    class var minSymbols: Int {
        return 5
    }
    static var count = 0
    
    var name: String {
        didSet {
            if name.count > ManKind.maxSymbols {
                name = oldValue
            } else if name.count < ManKind.minSymbols {
                name = oldValue
            }
            
        }
    }
    
    
    var lastName: String
    var age: Int {
        didSet { if age > MaxAge {
            age = oldValue
        } else if age < MinAge {
            age = oldValue
           }
        }
    }
    var height: Int {
        didSet {
            if height < minHeight {
            height = oldValue
           }
        }
    }
    var weight: Int {
        didSet {
            if weight < minWeight {
                weight = oldValue
            }
        }
    }
    
    
    
    init(name: String, lastName: String, age: Int, height: Int, weight: Int) {
        self.name = name
        self.lastName = lastName
        self.age = age
        self.height = height
        self.weight = weight
        ManKind.count += 1
    }
}
let example1 = ManKind(name: "Jack", lastName: "Black", age: 50, height: 12, weight: 900)
let example2 = ManKind(name: "Jack", lastName: "Black", age: 50, height: 12, weight: 900)
let example3 = ManKind(name: "Jack", lastName: "Black", age: 50, height: 12, weight: 900)
let example4 = ManKind(name: "Jack", lastName: "Black", age: 50, height: 12, weight: 900)
ManKind.count

class Student {
    
    var age: Int {
        didSet {
            print("old age is \(oldValue)")
        }
    }
    var temperature: Int {
        willSet {
            print("new temperature is \(newValue)")
        }
    }
    var salary: Double
    var salaryAfterTax: Double {
        get {
            return salary * 0.87
        }
        set {
            salary = (newValue * 500) / 432
            print(salary)
        }
    }
    init(age: Int, temperature: Int, salary: Double) {
        self.age = age
        self.temperature = temperature
        self.salary = salary
    }
}
var student1 = Student(age: 15, temperature: 90, salary: 100000)
student1.age = 25
student1.temperature = 93
student1.salaryAfterTax
student1.salaryAfterTax = 34000
//MARK: -- GPT HOMEWORK
//1
struct Person {
    var age: Int {
        willSet {
            print("Willset: age changed from \(age) to \(newValue)")
        }
        didSet {
            print("Didset: age changed to \(age) from \(oldValue)")

        }
    }
    var name: String {
        willSet {
            print("Willset: name changed from \(name) to \(newValue)")
        }
        didSet {
            print("Didset: name changed to \(name) from \(oldValue)")

        }
    }
}
var myPerson1 = Person(age: 10, name: "Vitya")
myPerson1.age = 15
myPerson1.name = "Sasha"
//2
class Rectangle {
    var width: Int = 15
    var height: Int = 4
    var area: Int {
        get {
        return width * height
        }
    }
    var perimeter: Int {
        get {
            return height * 2 + width * 2
        }
        set {
            let newWidth = newValue / 4
            let newHeight = newValue / 4
            width = newWidth
            height = newHeight
            print("\(width) and \(height)")
        }
    }
}
var myRectangle1 = Rectangle()
myRectangle1.perimeter
myRectangle1.area
myRectangle1.perimeter = 456
//3
class BankAccount {
    private var _accountHolder: String = "John" // Внутреннее свойство для хранения значения
    var balance: Double {
        willSet {
            print("balance has changed from \(balance) to \(newValue)")
        }
        didSet {
            print("balance has changed to \(balance) from \(oldValue)")

        }
    }
    
    static var debt: Double {
        get {
            return 0
        }
        set {
            if newValue > 150 {
                self.debt = 150 * 1.2
                print("your debt is increased at 1.2! and bow it is \(debt)")
            }
        }
    }
    var accountHolder: String {
        get {
         return _accountHolder
        }
        
        set {
            if newValue.count > 8 {
                _accountHolder = "\(newValue) is very long"
                print(accountHolder)
            } else {
                _accountHolder = newValue
            }
         print(_accountHolder)
        }
    }
    var formattedBalance: String {
        get {
            return String(format: "$%.2f", balance)
        }
    }
    init(balance: Double) {
        self.balance = balance
    }
}
var account1 = BankAccount(balance: 134.556)
print(account1.formattedBalance)
account1.formattedBalance
account1.accountHolder = "Rich"
account1.accountHolder
account1.accountHolder = "Richard"

BankAccount.debt = 1509.546
print(BankAccount.debt)

class LibraryBook {
    
    private var _title: String = ""
    private var _author: String = ""
    
    var title: String {
        get {
            return _title
        }
        set {
            if newValue.count <= 3 {
                print("Name is too short")
            } else {
                _title = newValue
            }
        }
    }
    
    
    var author: String {
        get {
            return _author
        }
        set {
            if newValue.count > 20 {
                let localString = String(newValue.prefix(20))
                _author = "\(localString)..."
            } else {
                _author = newValue
            }
        }
    }
    var year: Int = 0
    var yearPublished: String {
            "Year of publishing is \(year)"
    }
    func describeBook() -> String {
        return "Title: \(title), author:\(author), year: \(year)"
    }
    
}
var book1 = LibraryBook()
book1.describeBook()
book1.author = "Hank"
book1.title = "Abyss"
book1.year = 1984
print(book1.yearPublished)
//MARK: - Library

class MyLibrary {
   static var totalBooks: Int = 0
   
   static func addBook() {
        totalBooks += 1
     }
    static func removeBook() {
        if totalBooks > 0 {
            totalBooks -= 1
        }
    }
        var bookTitle: String
    init(bookTitle: String) {
        self.bookTitle = bookTitle
        MyLibrary.addBook()
    }
    func describeBook() -> String{
        return "Book Title: \(bookTitle)"
    }
    
    static func libraryStatus() -> String {
        return "Total number of books: \(totalBooks)"
    }
}
var library1 = MyLibrary(bookTitle: "Onegin")
var library2 = MyLibrary(bookTitle: "1984")

MyLibrary.libraryStatus()
print(MyLibrary.libraryStatus())
