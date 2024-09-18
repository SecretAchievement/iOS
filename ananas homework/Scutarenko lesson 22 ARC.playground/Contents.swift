import UIKit
var greeting = "Hello, playground"

var playground = true

class Student {
    
    unowned var teacher: Teacher
    
    deinit {
        print("goodbye student")
    }
    init(teacher: Teacher) {
        self.teacher = teacher
    }
}

class Teacher {
    
    var test: (() -> ())?
    
    
    deinit {
        print("goodbye teacher")
    }
    
    lazy var test2: (Bool) -> () = {
        [unowned self] (a: Bool) in
        //print(self.student)
        print(self)
        teacher.test2(true)
        
    }
    var student: Student!
    init() {
     
       student = Student(teacher: self)
    }
    var closure3: (() -> ())?

    
}

var teacher: Teacher



/*
if playground {
    
    var teacher = Teacher()
    
    if playground {
        var student = Student(teacher: teacher)
        teacher.student = student

    }
    
    t = teacher
    */
    print("exit playground")

var x = 10
var y = 20

class Human {
    var name = "a"
}

var h = Human()

var closure: () -> () = {
    [x, y] in
    print("\(x) \(y)")
}

var closure2: (Int) -> Int = {[x, y, h] (a: Int) -> Int in
    print("\(x) \(y) \(h.name)")
    return a
}



//{[x, y, h] (a: Int) -> Int in
//    print("\(x) \(y) \(h.name)")
//    return a
//}

closure2(1)
x = 30
y = 40
h = Human()
h.name = "b"
closure2(1)




print("end")
