import UIKit

var greeting = "Hello, playground"
/*
 1) Создать 3 пустых множества различными способами. Типы разные.
 2) Заполнить любое множество из пункта 1.
 3) Добавить/удалить значения всеми способами в/из множества пункта 2.
 4) Воспроизвести с ранее созданными множествами действия из урока. (isEmpty, count, contains и тд)
 5) Отсортировать множества по возрастанию и убыванию.
 6) Итерация по множеству:
 6.1 Посчитать сумму всех значений в множестве [2, 4, 5, -3, -1, 1, 0, -3, 7, 5, 3, 6, 91 и распечатать.
 6.2 Преобразовать множество в словарь. Ключ - элемент множетсва. Значение - остаток от деления на 3 элемента множетсва.
 [2: 2, 4: 1]
 0% 3
 1 % 3
 2% 3
 3% 3
 6.3 Цикл по словарю. Распределить на 3 новых словаря по значения (остаток 0, 1, 2). Распечатать.
 let first = [2: 2, • ••]
 let second = [4: 1, ...]
 let third = [3: 0, ... ]
 6.4 Создать новый set и сложить туда новые значения =>
 Значение = String (Сумма ключей( Int)) + String (остаток)
 [2: 2, 5: 2, 8: 21 => 2 + 5 + 8 = 15 // "15" + "2" = "152" - сложить в новый сет
 7) Создай несколько set и примени к ним все операторы. Распечатай результат.
 - union - значения обоих множеств.
 - intersection - общие значения двух входных множеств.
 - subtracting - значениями не принадлежащих указанному множеству из двух входных.
 - symmetricDifference - значений, которые не повторяются в двух входных множествах.
 8) Опиши операторы:
 8.1
 - isSubset(of:)
 - isSuperset(of:)
 - isStrictSubset(of:) или isStrictSuperset(of:)
 - isDisjoint (with:)
 8.2 Создай несколько set и примени к ним все операторы выше. Распечатай результат.
 */
//HOMEWORK
// 1) Создать 3 пустых множества различными способами. Типы разные.
var firstSet: Set<Character> = []
var secondSet = Set<Int>()
var thirdSet: Set = [""]
// 2) Заполнить любое множество из пункта 1.
firstSet = ["o", "d", "f", "g"]
// 3) Добавить/удалить значения всеми способами в/из множества пункта 2.
firstSet.insert("b")
firstSet.remove("d")
firstSet.removeFirst()
firstSet.removeAll()
//4) Воспроизвести с ранее созданными множествами действия из урока. (isEmpty, count, contains и тд)
firstSet = ["o", "d", "f", "g"]
firstSet.isEmpty
firstSet.count
firstSet.contains("d")
firstSet.first
firstSet.lazy
firstSet.publisher
//5) Отсортировать множества по возрастанию и убыванию.
firstSet.sorted(by: <)
firstSet.sorted(by: >)
secondSet = [2, 4, 5, -3, -1, 1, 0, -3, 7, 5, 3, 6, 91]
secondSet.sorted(by: <)
secondSet.sorted(by: >)
//6) Итерация по множеству:
//6.1 Посчитать сумму всех значений в множестве [2, 4, 5, -3, -1, 1, 0, -3, 7, 5, 3, 6, 91 и распечатать.
var multiplySet: Set = [2, 4, 5, -3, -1, 1, 0, -3, 7, 5, 3, 6, 91]
var sum = Int()
for number in multiplySet {
    sum += number
}
print("sum = \(sum)")
//6.2 Преобразовать множество в словарь. Ключ - элемент множетсва. Значение - остаток от деления на 3 элемента множетсва.
var myDictionary = [Int:Int]()
for number in multiplySet {
    myDictionary.updateValue(number % 3, forKey: number)
}
print(myDictionary.sorted(by: <))
//6.3 Цикл по словарю. Распределить на 3 новых словаря по значения (остаток 0, 1, 2). Распечатать.
var firstDictionary = [Int:Int]()
var secondDictionary = [Int:Int]()
var thirdDictionary = [Int:Int]()
for (key, value) in myDictionary {
    switch value {
    case 0:
        firstDictionary.updateValue(value, forKey: key)
    case 1:
        secondDictionary.updateValue(value, forKey: key)
    case 2:
        thirdDictionary.updateValue(value, forKey: key)
    default:
        break
    }
}
print(firstDictionary)
print(secondDictionary)
print(thirdDictionary)
//6.4 Создать новый set и сложить туда новые значения =>
//Значение = String (Сумма ключей( Int)) + String (остаток)
//[2: 2, 5: 2, 8: 21 => 2 + 5 + 8 = 15 // "15" + "2" = "152" - сложить в новый сет
var newSet: Set = [""]
var keySum = Int()
var valueSum = Int()
for (key, value) in myDictionary {
    keySum += key
    valueSum += value
    newSet.insert("\(key)" + "\(value)")
}
print(newSet)
//7) Создай несколько set и примени к ним все операторы. Распечатай результат.
var fourthSet: Set = [34, 6, 43231, 5234, 344, 5]
var fifthSet: Set = [44, 2, 78, 4, 56, 1, 5, -1]
var sixthSet = [232, 34, 21, 566, 23, 4324]
fourthSet.union(fifthSet)
print(fourthSet)
var seventhSet = fourthSet.intersection(sixthSet)
print(seventhSet)
fourthSet.subtracting(fifthSet)
print(fourthSet)
seventhSet.symmetricDifference(sixthSet)
print(seventhSet)
//8) Опиши операторы:
//8.1
//- isSubset(of:) - Возвращает логическое значение, которое указывает, является ли это множество подмножеством данного множества. Подмножество содержит только те элементы, которые также присутствуют в другом множестве.
//- isSuperset(of:) -  Возвращает логическое значение, которое указывает, является ли это множество надмножеством данного множества. Надмножество содержит все элементы другого множества и, возможно, дополнительные элементы.
//- isStrictSuperset(of:) - Возвращает логическое значение, которое указывает, является ли это множество строгим надмножеством данной последовательности. Строгое надмножество содержит все элементы другого множества, но также содержит как минимум один элемент, которого нет в подмножестве.
//- isDisjoint (with:) - Возвращает логическое значение, которое указывает, не имеет ли это множество общих элементов с данным множеством. Два множества называются непересекающимися, если они не имеют общих элементов.
//8.2 Создай несколько set и примени к ним все операторы выше. Распечатай результат.
var ninthSet: Set = [2323, 244, 3, 2345, 2, 324, 24542, 244]
var tenthSet: Set = [23233, 2344, 33, 23345, 23, 3234, 243542, 2434]
var eleventhSet: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
ninthSet.isSubset(of: tenthSet)
tenthSet.isSuperset(of: eleventhSet)
eleventhSet.isStrictSuperset(of: tenthSet)
ninthSet.isDisjoint(with: ninthSet)
