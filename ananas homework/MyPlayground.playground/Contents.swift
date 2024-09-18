import UIKit

var greeting = "Hello, playground"

var number = 10
var count = 15
number = 12 // = - присваивание
number == count // == оператор проверки на равенство
// === - оператор ссылочных типов

// HOMEWORK

//1
var myString = "String"
myString += "1"
myString > "23"
myString < "23"
myString == "23"
myString = "23"
myString + "3"
var myBool = true
myBool == false
myBool = false
var myInt = 3
myInt += 4
myInt -= 1
myInt > 5
myInt < 1
myInt == 5
myInt = 444
myInt + 2
myInt - 4
myInt % 4
myInt * 1
myInt / 2
//2
let string1 = "Cat"
let string2 = "Dog"
string1 < string2
string1 > string2
string1 <= string2
string1 <= string2
//сравнение основано на порядке в словаре
let bool1 = true
let bool2 = false
//bool1 < bool2 выдает ошибку, похоже, что нельзя сравнивать "Binary operator '<' cannot be applied to two 'Bool' operands"
let character1: Character = "a"
let character2: Character = "b"
character1 < character2
character1 > character2
character1 <= character2
character1 <= character2
//тут похоже идет сравнение согласно алфавиту
//3
let fourInt = 4
if fourInt == 4 {
    print("int = 4")
} else {
    "int != 4"
}
let fourString = fourInt == 4 ? "int = 4" : "int != 4"
//4
let firstInt = (2 + 10) / 4
let secondInt = (12 * 33) / (13 - 2)
//5
// || возравщает true, если хотя бы одно утверждение верно. && вернет true только если оба выражения верны
let integerTwo = 2
let integerEight = 8
integerTwo == 2 || integerEight == 9
integerTwo == 2 && integerEight == 9
//6 === - проверяет, указывают ли две переменные на один и тот же обёект в памяти
