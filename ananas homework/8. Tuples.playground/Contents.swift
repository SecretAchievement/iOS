import UIKit

var greeting = "Hello, playground"
/*
 1) Создать 3 тюпла:
 1.1 Один тип данных, указать явно типы, 2 значения
 1.2 Разные типы данных, добавить доп. название, 5 значений
 1.3 Обратиться к тюплю через 0,1... Через доп.название. Print
 2) Создать свой switch. Min - 7cases. Используй тюплы.
 1.1 Добавить break - что произойдет?
 1.2 Добавить fallthrough - что произойдет?
 1.3 Добавить break fallthrough в один кейс - что произойдет?
 1.4 Добавить минимум два условия с where
 3) В циклк for in посчитать:
 2.1 Степени тройки до 7 степени. Print
 2.2 8! (8 факториал). Print
 4) Придумать условия if {} else {}. Использовать маткриалы из урока
 */
// 1.1 Один тип данных, указать явно типы, 2 значения
var myFirstTuple: (Float, Float) = (one: 1.1, two: 2.2)
// 1.2 Разные типы данных, добавить доп. название, 5 значений
var mySecondTuple = (one: 1, two: "two", three: 3, four: 4, floatFive: 5.5)
//1.3 Обратиться к тюплю через 0,1... Через доп.название. Print
print(myFirstTuple.0)
print(mySecondTuple.floatFive)
print(mySecondTuple.3)
print(mySecondTuple.1)
// 2) Создать свой switch. Min - 7cases. Используй тюплы.
switch mySecondTuple {
case (1, "two", 4, 4, 5.5) where mySecondTuple.one == mySecondTuple.three:
    "Thats not my tuple!"
case (1, "three", 3, 4, 5.5):
    "Thats not my tuple!"
case (1, "two", 3, 4, 5.5) where mySecondTuple.2 < mySecondTuple.3:
    "Thats my tuple!"
    fallthrough
case (1, "two", 3, 43, 5.5):
    "fallthrough works!"
case (1, "two", 4, 4, 5.5):
    "Thats not my tuple!"
case (1, "two", 4, 6, 5.5):
    "Thats not my tuple!"
case (1, "two", 4, 4, 5.5):
    "Thats not my tuple!"
     //break fallthrough
default: break
}
// 2.1 Добавить break - что произойдет? добавил break в default, это остановило процесс
//2.2 Добавить fallthrough - что произойдет? Добавил в третий кейс, привело к тому, что сработало условие в следующем кейсе
// 2.3 Добавить break fallthrough в один кейс - что произойдет? добавил в последний кейс - показывает ошибку "Consecutive statements on a line must be separated by ';'"
// 2.4 Добавить минимум два условия с where - добавил
//3.1 Степени тройки до 7 степени. Print
let max = 7
for index in 0...max {
    let result = Int(pow(3.0, Double(index)))
    print(result)
}
//3.2 8! (8 факториал). Print
var number = 1
for index in 1...8 {
    print(index)
    number *= index
    print(number)
}
// 4) Придумать условия if {} else {}. Использовать маткриалы из урока
if myFirstTuple.0 == 1.1 {
    print("its right!")
} else if myFirstTuple.1 != 2.2 {
    "thats also right, but not works"
} else {
    print("nothing")
}
if mySecondTuple.floatFive.isEqual(to: 5.5) {
    "its right"
} else {
    "nothing"
}
var myNumber = 1
for index in 1...7 {
    number = Int(pow(Double(3.0), Double(index)))
    print(number)
}
var factorial = 1
for index in 1...8 {
    factorial *= index
    print(factorial)
}
