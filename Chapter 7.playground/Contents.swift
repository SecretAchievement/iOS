import UIKit
import SwiftUI

var greeting = "Hello, playground"

let evenNumbers = [2, 4, 6, 8]
var subscribers: [String] = []
let allZeroes = Array(repeating: "fuck", count: 666)
print(allZeroes)
let vowels = ["A", "E"]
print(vowels)
var players: [String] =  ["Alice", "Bob", "Cindy", "Dan"]
print(players.isEmpty)
//
if players.count < 2 {
    print("We need at least two players!")
} else  {
    print("Let's start")
}
//
var currentPlayer = players.first
print (currentPlayer as Any)
print(players.last as Any)
currentPlayer = players.min()
print(currentPlayer as Any)
print([2, 3, 1].first as Any)
print([2, 3, 1].min() as Any)
//
if var currentPlayer = currentPlayer {
    print("\(currentPlayer) will start")
}
var firstPlayer = players[1]
print("First player is \(firstPlayer)")
let upcomingPlayersSlice = players[0...1]
print(upcomingPlayersSlice[0], upcomingPlayersSlice[1])
let upcomingPlayersSlice1 = Array(players[0...1])
print(upcomingPlayersSlice[0], upcomingPlayersSlice1[1])
//
func isEliminated(player: String) -> Bool {
    !players.contains(player)
}
print(isEliminated(player: "Bob"))
players[0...1].contains("Bob")
players.append("Eli")
print(players)
players += ["Gina"]
players.insert("Frank", at: 5)
//removing
var removedPlayer = players.removeLast()
print("\(removedPlayer) was removed")
print(players)
removedPlayer = players.remove(at:2)
print("\(removedPlayer) was removed")
//removedPlayer = players.firstIndex(of:3)
print(players.firstIndex(of: "Dan")!)
print(players)
players[4] = "Franklin"
print(players)
players[0...1] = ["Donna", "Craig", "Brian", "Anna"]
print(players)
//moving alements
let playerAnna = players.remove(at: 3)
players.insert(playerAnna, at: 0)
print(players)
players.swapAt(1, 3)
print(players)
players.sorted()
print(players)
//iterating through an array
let scores = [2, 2, 8, 6, 1, 2, 1]

for player in players {
    print(player)
}
for (index, player) in players.enumerated() {
    print("\(index + 1). \(player)")
}
func sumOfElements (in array: [Int]) -> Int {
    var sum = 0
    for number in array {
        sum = sum + number
    }
    return sum
}
print(sumOfElements(in: scores))
for (index, player) in players.enumerated(){
    print("\(index + 1). \(player) - \(scores[index])")
}
var namesAndScores = ["Anna": 2, "Brian": 2, "Craig": 8, "Donna": 6]
print(namesAndScores)

var pairs: [String: Int] = [:]
pairs.reserveCapacity(20)
namesAndScores.isEmpty
namesAndScores.count
//modify dictionary
var bobData = [
    "name" : "Bob",
    "profession": "Card Player",
    "country" : "USA",
    "state" : "CA",
    "city":"San Francisco"
]
bobData["city"] = "San Francisco"

func printLocation(ofPlayer player:  [String: String]) {
    if let state = player["state"], let city = player["city"] {
        print("Player lives in \(city), \(state)")
    }
}
printLocation(ofPlayer: bobData)
//
bobData.updateValue("Bobby", forKey: "name") //Bob

bobData["profession"] = "Mailman"
//removing
bobData.removeValue(forKey: "state")
bobData["city"] = nil
//iterating
for (player, score) in namesAndScores {
    print("\(player) - \(score)")
}

for (player, score) in namesAndScores {
    print("\(player) - \(score)")
}
for player in namesAndScores.keys {
    print("\(player), ", terminator: "")
}
print("")
//SETS


let setOne: Set<Int> = [1]
let someArray = [1, 2, 3, 1]

var explicitSet: Set<Int> = [1, 2, 3, 1]
var someSet = Set([1, 2, 3, 1])
print(someSet)
print(someSet.contains(1))
print(someSet.contains(4))
someSet.insert(5)
let removedElement = someSet.remove(1)
print(removedElement as Any)
//Challenges

let array1 = [Int]()
let array3: [String] = []
let array4 = [1, 2, 3]

print(array4[0])
//print(array4[5])
array4[1...2]
//array4[0] = 4
//array4.append(4)
var array5 = [1, 2, 3]
array5[0] = array5[1]
array5[0...1] = [4, 5]
//array5[0] = "Six"
//array5 += 6
for item in array5 {
    print(item) }
//remove
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var result = array
    if let index = array.firstIndex(of: item) {
        result.remove(at: index)
    }
    return result
}
print(removingOnce(5, from: array4))
func removing (_ item: Int, from array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for candidateItem in array {
        if candidateItem != item {
            newArray.append(candidateItem)
        }
    }
    return newArray
}

removing(3, from: array5)
func reversed (_ array: [Int]) -> [Int] {
    var newArray: [Int] = []
    for item in array {
        newArray.insert(item, at: 0)
    }
    return newArray
}
func middle(_ array: [Int]) -> Int? {
    guard !array.isEmpty else {
        return nil
    }
    return array[(array.count - 1)/2]
}
//

func minMax (of numbers: [Int]) -> (min: Int, max: Int)? {
    if numbers.isEmpty {
        return nil
    }
    var min = numbers[0]
    var max = numbers[0]
    for number in numbers {
        if number < min {
            min = number
        }
        if number > max {
            max - number
        }
    }
    return (min, max)
}
//
func printLongStateNames(in dictionary: [String: String]) {
    for (_, value) in dictionary {
        if value.count > 8  {
            print(value)
        }
    }
}
//



func meging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var newDictionary = dict1
    for (key, value) in dict2 {
        newDictionary[key] = value
    }
    return newDictionary
}

func occurencesOfVharacters (in text: String) -> [Character: Int] {
    var occurences: [Character: Int] = [:]
    for character in text {
        if let count = occurences[character] {
            occurences[character] = 1
        }
    }
    return occurences
}
//
func isInvertible (_ dictionary: [String: Int]) -> Bool {
    var seenValues: Set<Int> = []
    for value in dictionary.values {
        if seenValues.contains(value){
            return false
        }
        seenValues.insert(value)
    }
    return true
}
//

var nameTitleLookup: [String : String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]

nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil
