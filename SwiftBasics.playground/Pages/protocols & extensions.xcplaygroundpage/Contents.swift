//: [Previous](@previous)

//: Protocols and Extensions

import Foundation

//: CustomStringConvertible
//: playground has som troubles to use CustomStringConvertible - run button in the left column stopped working, use the button in the toolbar instead!
struct Student {
    
    let id: String
    var firstName: String
    var lastName: String
}

extension Student: CustomStringConvertible {
    var description: String {
        return "Student{id:\(id), name:\(firstName) \(lastName)}"
    }
}


let s = Student(id: UUID().uuidString, firstName: "Jan", lastName: "Moravek")
print(s)

//: Equatable
//: custom implementation of ==()
extension Student: Equatable {
    static func == (lhs: Student, rhs: Student) -> Bool {
        return lhs.id == rhs.id
    }
}

let s2 = Student(id: UUID().uuidString, firstName: "Jan", lastName: "Moravek")

if s == s2 {
    print("students match")
} else {
    print("students do not match")
}


//: Comparable
//: custom implementation of <()
extension Student: Comparable {
    static func < (lhs: Student, rhs: Student) -> Bool {
        return lhs.id < rhs.id
    }
}

if s < s2 {
    print("s < s2")
} else {
    print("s >= s2")
}

//: [Next](@next)
