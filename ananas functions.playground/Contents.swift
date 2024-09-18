import UIKit
import Foundation
var greeting = "Hello, playground"

/*
 1) Напиши функции, не забывай про нейминг:
 - Ничего не принимает ничего не возвращает
 - Принимает 2(Int), возвращает 1(Double) I
 - Принимает 3 параметра, два из которых "Вариативные"
 - Принимает любое кол-во параметров типа Float, складывает в массив, сортирует по возрастанию и возвращает массив
 -> [Float]
 - Принимает 3 значения различных типов данных и возвращает Словарь -> [Int: (String, String)]:
 У первого нет внешнего имени, есть внутреннее
 У второго есть и внешнее и внутреннее имя
 У третьего только внешнее имя + имеет значение по умолчанию
 Не забудь вызвать функции :)
 2) Описать разницу между round() floor() ceil() и привести примеры.
 P.S Не забудь про import Foundation :)
 3) Напиши функцию, которая принимает 4 параметра (Имя, рост, вес, возраст) и возвращает 1 (String) Используй формулу индекса массы тела (ИМТ)
 Индекс массы тела рассчитывается по формуле:
 ИМТ = m / h^2 т - масса тела в килограммах
 h - рост в метрах
 Например, масса человека = 60 кг, рост = 170 см.
 ИМТ = 60 : (1,7 × 1,7) @ 20,7612457 кг/м2 (Округлить до сотых по правилам математики) см. пункт 2
 Нужно посчитать ИМТ по введенным данным и определить статус.
 Примеры вывода:
 "Алексей: ИМТ = 22.5
 Поздравляем, ваш вес в норме! "
 "Маша: ИМТ = 17.3"
 Срочно кушать!
 Недостаточная масса тела :("
 Ссылка на таблицу ИМТ: http://www.yamalcmp.ru/poleznye_kal_kulyatory/kal_kulyator_indeksa_massy_tela/
 */
//1
func myFirstFunc() {
    let number = Int.random(in: 1...100)
    print("my number is \(number)")
}
func mySecondFunc(one: Int, two: Int) -> Double {
    return 10 / 3
}
func myThirdFunc(one: String, two: String..., three: String...) {
    print(one, two, three)
}
func myFourthFunc(one: Float, two: Float, three: Float) -> [Float] {
    var myArray = [one, two, three]
    myArray.sorted(by: >)
    return myArray
}
func myFifthFunc(_ firstValue: Int, two secondValue: String, three thirdValue: String = "Three" ) -> [Int:(String, String)] {
    return [firstValue:(secondValue, thirdValue)]
}
myFirstFunc()
mySecondFunc(one: 1, two: 2)
myThirdFunc(one: "hi")
myFourthFunc(one: 1.1, two: 2.2, three: 3.3)
myFifthFunc(12, two: "Two")
//2 Round округляет до ближайшего целого числа, которое может быть выше, ниже или равно фактическому значению.
//Floor округляет до ближайшего целого числа, которое может быть равно или ниже фактического значения.
//Ceil округляет до ближайшего целого числа, которое может быть равно или выше фактического значения.
round(2.7)
floor(2.7)
ceil(2.7)
round(2.3)
floor(2.3)
ceil(2.3)
//3
func imtFunc(name: String, height: Double, weight: Double, age: Int) -> String {
    var num = weight / (height * height)
    let imt = round(Double(num * 100)) / 100
    switch imt {
    case 0..<18.5:
        return "\(name), возраст:\(age). ИМТ = \(imt)\nСрочно кушать!\nНедостаточная масса тела :("
    case 18.5...25.0:
        return "\(name), возраст:\(age). ИМТ = \(imt)\nПоздравляем, ваш вес в норме!"
    case 25.0...1000:
        return "\(name), возраст:\(age). ИМТ = \(imt)\nСрочно худеть!\nБольшая масса тела :("
    default:
        break
    }
    return ""
}
imtFunc(name: "Serj", height: 1.83, weight: 76, age: 12)
