import UIKit
import Foundation

var greeting = "Hello, playground"
//extension int
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
    var isOdd: Bool {
        return !isEven
    }
    
    enum EvenOrOdd {
        case Even
        case Odd
    }
    var evenOrOdd: EvenOrOdd {
        return isEven ? .Even : .Odd
    }
    
    func pow(value: Int) -> Int {
        var temp = self
        for _ in 1..<value {
            temp *= self
        }
        return temp
    }
    
    mutating func powTo(value: Int) {
        self = pow(value: value)
    }
    
    var binaryString: String {
        var result = ""
        
        for i in 0..<8 {
            result = String(self & (1 << i) > 0) + result
        }
        
        return ""
    }
    
    
}

//extension String
extension String {
    init(_ value: Bool) {
        self.init(value ? 1 : 0)
    }
}

//extension 2
extension Int.EvenOrOdd {
    var string: String {
        switch self {
        case .Even:
            "even"
        case .Odd:
            "odd"
        }
    }
}
//trash
var a = 5
if a % 2 != 0 {
    print("a")
}

if a.isOdd {
    print("a")
}
a.evenOrOdd.string

a.pow(value: 4)
a.powTo(value: 4)
a = 5
a.binaryString

let s = "Hello world"
let start = s.startIndex

//let range = Range(start: start, end: end)
