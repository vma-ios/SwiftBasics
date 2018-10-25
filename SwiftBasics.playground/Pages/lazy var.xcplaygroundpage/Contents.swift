//: [Previous](@previous)

import Foundation

struct Address {
    var street: String = ""
}

//: lazy variable
struct Person {
    lazy var addr: Address = {
        var adr = Address()
        adr.street = "Konvalinkova"
        print("initialized")
        return adr
    }()
}

var p = Person()
p.addr
p.addr

//: [Next](@next)
