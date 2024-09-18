import UIKit

var greeting = "Hello, playground"


extension UInt8 {
    func binary() -> String {
        var result = ""
        for i in 0..<8 {
            let mask = 1 << i
            let set = Int(self) & mask != 0
            result = (set ? "1" : "0") + result
        }
        return result
    }
}

var a: UInt8 = 57
a.binary()
a = a + 2
a.binary()

(5 as UInt8).binary()

a = a + 5
a = a + 0b00000101
a.binary()
a = a - 0b0000100
a.binary()

a = a << 1
a.binary()
