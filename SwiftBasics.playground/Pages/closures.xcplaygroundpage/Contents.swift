//: [Previous](@previous)

//: Closures
import Foundation


//: function type
func foo() {}
var f = foo // function type
func foo2(_ a: Int) -> String { return "" }
var f2 = foo2

//: closure
f = {
    print("foo")
}
f()

//: closure with full header
f2 = { (a: Int) -> String in
    return String(a)
}
//: syntactic sugar
f2 = { a in
    String(a)
}
f2 = { String($0) }

//: examples
struct Student {
    let firstName: String
    let lastName: String
}

let students = [Student(firstName: "Jan", lastName: "Novak"), Student(firstName: "Michal", lastName: "Mrkva")]
var sorted = students.sorted(by: {s1, s2 in s1.firstName < s2.firstName})
sorted
//trailing closure
sorted = students.sorted { $0.firstName < $1.firstName }

let studentNames =  students.map { "\($0.firstName) \($0.lastName)" }
studentNames

let evenNums = [1, 2, 3, 4, 5, 6, 7, 8].filter { $0 % 2 == 0 }
evenNums

var sum = [1, 2, 3, 4, 5, 6, 7, 8].reduce(0) { acc, num in
    return acc + num
}
sum
sum = [1, 2, 3, 4, 5, 6, 7, 8].reduce(0, +)
sum

var age = 15
let printAge = {
    print(age)
}
printAge()
age = age + 1
printAge()

let printAgeValue = { [age] in
    print(age)
}
printAgeValue()
age = age + 1
printAgeValue()










//: [Next](@next)
