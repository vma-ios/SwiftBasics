//: [Previous](@previous)

//: struct
struct Person {
    var name: String // stored property
    var age: Int
}

var person = Person(name: "John", age: 16) // initializer
person.name = "Mike"
let personConst = Person(name: "Steve", age: 10)
//personConst.age = 11 error
//: class
class Vehicle {
    var speed: Double
    
    init(speed: Double) {
        self.speed = speed
    }
    
    init() {
        speed = 0
    }
}

var vehicle = Vehicle(speed: 0)
var vehicle2 = Vehicle()

//: value vs reference type
// value type
var p1 = Person(name: "Mike", age: 17)
var p2 = p1
p1.name = "Susan"
p1.name
p2.name

// reference type
var v1 = Vehicle(speed: 0)
var v2 = v1
v1.speed = 10
v1.speed
v2.speed

// inheritance - only class
class Car: Vehicle {
    
}
let car = Car(speed: 0)
car.speed += 10
car.speed

//: [Next](@next)
