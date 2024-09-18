import UIKit

var greeting = "Hello, playground"

var array = [1, 4, 55, -1]
var arrayInt: [Int] = [2, 44, 2, 2, 2]
var arrayString = ["Jack", "Eva", "Dasha", "Alice"]
var arrayOptional: [String?]? = ["1", "2", "3", "4", nil, nil]
var arrayEmpty: [Double] = Array()
arrayEmpty
print(arrayEmpty)
var someInt = [Int]()
var arrayCount = Array(1...1000)
var myArray = [1]
print(myArray)
myArray.append(11)
myArray += [22]
myArray.insert(101, at: 2)
//myArray = []
//myArray.removeAll()
if myArray.isEmpty {
    print("mushroom")
} else {
    print("go to kitchen")
}
//deleting from array

let firstEl = myArray.removeFirst()
print(myArray)
let lastEl = myArray.removeLast()
print(myArray)
//поиск и чтение

myArray = [2, 3, 11, 21, 33, 100, -2, 45]
myArray[0]

let element = myArray[0]
myArray[1] = 120
myArray[2...5]
myArray.first
myArray.last
myArray.max()
myArray.min()
//sorting
var sortArray = myArray.sorted(by: >)
sortArray.sort()
print(sortArray, myArray)
//for in
var names = arrayString

for name in names {
    let newName = name + " New"
    print(newName)
    if name.count > 4 {
        print(name.count)
    } else {
        print("less 4 symbols")
    }
}
for (index, name) in names.enumerated() {
    print("Индекс - \(index) имя -  \(name)")
}
//HOMEWORK
//1
var firstArray = [1, 3, 56, 34, 6]
var secondArray: [String] = ["Cat", "Dog", "Goat", "Snake"]
var thirdArray = [Double]()
var fourthArray = Array(1...4)
//2
var fifthArray = Array(12...222)
//3
firstArray.append(4)
firstArray.insert(2, at: 0)
firstArray.removeLast()
firstArray.removeFirst()
secondArray.append("Dog")
secondArray.insert("Goat", at: 0)
secondArray.removeLast()
secondArray.removeFirst()
thirdArray.append(4.3333)
thirdArray.insert(5.212, at: 1)
thirdArray.removeLast()
thirdArray.removeFirst()
fourthArray.append(66)
fourthArray.insert(3, at: 2)
fourthArray.removeLast()
fourthArray.removeFirst()
//4
firstArray.isEmpty
secondArray.count
thirdArray.capacity
fourthArray.customMirror
firstArray.hashValue
//5
firstArray.sort(by: < )
firstArray.sort(by: > )
secondArray.sort(by: <)
secondArray.sort(by: >)
//6.1
var optionalArray: [String]? = ["House", "Forest", "Sun"]
//6.2
var doubleArray: [Double?] = [4.2323, 5.2323, nil]
//6.3
var intArray: [Int?]? = [4, 8, 15, 16, 23, nil]
//7.1
var sum = 0
for int in firstArray {
    sum += int
    print(sum)
}
//8.1
var sumString = ""
for string in secondArray {
    sumString += string
    print(sumString)
}
//9.1
var anotherArray = [""]
for  (index, character) in sumString.enumerated() {
    let myString = ("\(index)\(character)")
    anotherArray.append(myString)
    print(anotherArray)
}
//9.2 типа string
//10 - тогда будет возвращен nil
doubleArray[2]
//11
firstArray.dropFirst() // - в этом случае будет возвращен массив без первого элемента, сам массив не будет тронут
firstArray.removeFirst() // - удаляет первый элемент из массива
