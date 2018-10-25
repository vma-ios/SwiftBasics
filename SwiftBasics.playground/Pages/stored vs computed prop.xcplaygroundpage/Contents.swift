//: [Previous](@previous)

import Foundation

struct Car {
    // stored property
    private var manufacturer: String = ""
    // computed property
    var description: String {
        get {
            return "The car manufacturer is \(manufacturer)"
        }
        set {
            manufacturer = newValue
        }
    }
    init(manufacturer: String) {
        self.manufacturer = manufacturer
    }
}

var car = Car(manufacturer: "Renault")
car.description
car.description = "Audi"
car.description

//: [Next](@next)
