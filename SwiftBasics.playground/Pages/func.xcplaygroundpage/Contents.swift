//: [Previous](@previous)

//: Function
print("ahoj") // func call

func sayHello() {
    print("Hello")
}

sayHello()

// with parameter label
func sayHello(to person: String) {
    print("\(person), Hello!") // string interpolation
}

sayHello(to: "Lubos")

// return value
func createGreeting(to person: String) -> String {
    return "\(person), Hello!"
}

print(createGreeting(to: "Jano"))
//: [Next](@next)
