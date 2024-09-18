import UIKit

var greeting = "Hello, playground"
/*
1) Создать 3 словаря различными способами. Типы разные.
2) Заполнить словарь. Ключ - номер. Значение - Фамилия (Имя). [Int: String].
3) Добавить/удалить значения всеми способами в словарь из пункта 2.
4) Воспроизвести с ранее созданными словарями действия из урока. (isEmpty, count, contains и тд)
5) Отсортировать словари по возрастанию и убыванию (key, value)
6) Итерация по словарю Фамилий (Имен) пункт 2:
6.1 Получить все value из словаря и сложить их в отдельный массив, отсортировать значения в массиве по
убыванию.
6.2 Из нового массива получить первую букву каждого слова и сложить их в отдельный массив
6.3 Создать новый словарь и сложить туда ключ - первая буква (нижний регистр) + ключ, значение -
фамилия.
["н": "Наташа", "д": "Дима"]
Пример: [2: "Наташа", 6: "Дима", 12: "Вова"] => ["н2": "Наташа", "д6": "Дима", "в12": "Вова"]
* 6.4 Вам дан массив имен:
[ "Влад", "Владилен", "Гарри", "Владимир", "Гаспар", "Евгений, "Павел", "Георгий", "Пётр", "Владлен",
"Влас"]
Есть фамилии (имена), которые начинаются с одной буквы
Нужно получить словарь => ["в": "Влад", "в1": "Владилен", "г": "Гарри", в2: "Владимир", "г1":
"Гаспар"... и тд]
6.5 Распечатать этот словарь, предварительно отсортировав от а до я по ключу.
7) Что будет если постучаться/удалить по несуществующий индекс в словаре?
*/


//HOMEWORK

//1) Создать 3 словаря различными способами. Типы разные.
var firstDictionary = [5:true, 6:false, 9:false, 1:true]
var secondDictionary: [Float: String] = [4.1:"", 5.22:"hey", 6.22:"ok", 3.4:"skip", 5.332:"blue"]
var thirdDictionary = [Character: Double]()
//2) Заполнить словарь. Ключ - номер. Значение - Фамилия (Имя). [Int: String].
var fourthDictionary = [1:"Petrov", 2:"Sidorov", 3:"Ivanov"]
//3) Добавить/удалить значения всеми способами в словарь из пункта 2.
fourthDictionary[0] = "Jackson"
fourthDictionary[4] = "Mercury"
fourthDictionary[5] = "Bellamy"
fourthDictionary.updateValue("Guetta", forKey: 0)
fourthDictionary[0] = nil
let anotherDictionary = fourthDictionary.removeValue(forKey: 1)
fourthDictionary.removeAll()
fourthDictionary[105] = "Romanov"
fourthDictionary = [:]
//4) Воспроизвести с ранее созданными словарями действия из урока. (isEmpty, count, contains и тд)
fourthDictionary.isEmpty
secondDictionary.count
fourthDictionary = [1:"Petrov", 2:"Sidorov", 3:"Ivanov"]
fourthDictionary.contains { surname in
    surname.value == "Petrov" && surname.key == 1
}
fourthDictionary.contains { surname in
    surname.value == "Sidorov" || surname.key == 776
}
fourthDictionary.keys
fourthDictionary.values
fourthDictionary.index(forKey: 3)
fourthDictionary.reversed()
//5) Отсортировать словари по возрастанию и убыванию (key, value)
fourthDictionary.keys.sorted(by: <)
fourthDictionary.keys.sorted(by: >)
fourthDictionary.values.sorted(by: <)
fourthDictionary.values.sorted(by: >)
secondDictionary.keys.sorted(by: <)
secondDictionary.keys.sorted(by: >)
secondDictionary.values.sorted(by: <)
secondDictionary.values.sorted(by: >)
//6) Итерация по словарю Фамилий (Имен) пункт 2:
//6.1 Получить все value из словаря и сложить их в отдельный массив, отсортировать значения в массиве по
//убыванию.
let namesDictionary: [Int: String] = [1:"Petya", 2:"Vanya", 3:"Natasha", 4:"Oksana", 5:"Sveta"]
var myArray: [String] = []
for values in namesDictionary.values.sorted(by: <) {
    myArray.append(values)
    print(myArray)
}
//6.2 Из нового массива получить первую букву каждого слова и сложить их в отдельный массив
var secondArray: [Character] = []
for word in myArray {
    var letter = word.first
    secondArray.append(letter ?? "o")
    print(secondArray)
}
//6.3 Создать новый словарь и сложить туда ключ - первая буква (нижний регистр) + ключ, значение -
//фамилия.
//Пример: [2: "Наташа", 6: "Дима", 12: "Вова"] => ["н2": "Наташа", "д6": "Дима", "в12": "Вова"]
var myDictionary = [String : String]()
for (key, value) in namesDictionary {
    myDictionary.updateValue((value), forKey: "\(value.lowercased().first ?? "0")\(key)")
    print(myDictionary)
}
// 6.4 Вам дан массив имен:
//[ "Влад", "Владилен", "Гарри", "Владимир", "Гаспар", "Евгений, "Павел", "Георгий", "Пётр", "Владлен",
//"Влас"]
//Есть фамилии (имена), которые начинаются с одной буквы
//Нужно получить словарь => ["в": "Влад", "в1": "Владилен", "г": "Гарри", в2: "Владимир", "г1":
//"Гаспар"... и тд]
var namesArray = ["Влад", "Владилен", "Гарри", "Владимир", "Гаспар", "Евгений", "Павел", "Георгий", "Пётр", "Владлен", "Влас"]
func generateDictionary(from array: [String]) -> [String: String] {
    var result: [String: String] = [:]
    var counters: [Character: Int] = [:]
    for name in array {
        guard let firstChar = name.lowercased().first else {continue}
        let count = counters[firstChar, default: 0]
        let key = count == 0 ? String(firstChar) : "\(firstChar)\(count)"
        result[key] = name
        counters[firstChar] = count + 2
    }
    return result
}
let resultDictionary = generateDictionary(from: namesArray)
//6.5 Распечатать этот словарь, предварительно отсортировав от а до я по ключу.
let sortedDictionary = resultDictionary.sorted {$0.key < $1.key}
print(sortedDictionary)
//7) Что будет если постучаться/удалить по несуществующий индекс в словаре?
var fifthDictionary = firstDictionary.removeValue(forKey: 777)
print(fifthDictionary ?? "0")
print(firstDictionary[44] ?? "0")
//удаление вернуло мне nil, если попытаться постучаться - тоже вернуло nil
