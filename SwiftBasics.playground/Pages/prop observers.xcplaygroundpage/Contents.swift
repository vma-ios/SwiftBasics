//: [Previous](@previous)

import Foundation
//: property observers
struct Person {
    var firstName: String {
        willSet {
            print(newValue)
        }
        didSet {
            print(oldValue)
        }
    }
    var lastName: String
}

var p = Person(firstName: "Jan", lastName: "Novak")
p.firstName = "Peter"

var name: String = "Jan" {
    didSet {
        print(oldValue)
    }
}
name = "Milan"


//: [Next](@next)
