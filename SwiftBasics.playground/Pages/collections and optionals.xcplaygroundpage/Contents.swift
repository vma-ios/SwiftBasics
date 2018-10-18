//: [Previous](@previous)

//: Collections
import Foundation

//: arrays
var weekDays = ["mo", "tue", "wed"]
var array: Array<Int> = [1, 2, 3]
var swiftyArray: [Int] = []
var swiftyInitArray = [Int]()

for d in weekDays {
    print(d)
}

weekDays.append("fri")
weekDays

//: dictionary
var httpErrorCode = ["OK": 200, "File Not Found": 404]

//: optionals

var nilInt: Int? = nil
let nilDouble: Double? = nil
let nilArr: [Int]? = nil
let arrIntNil: [Int?] = [nil]

nilInt = 6
let s = 1 + (nilInt ?? 0) // coalescing operator
let ss = s + 1

if nilInt != nil {
    let sum = 1 + nilInt!
    print(sum)
}

// optional binding
var age: Int? = nil
age = 16
if let age = age {
    print(age)
} else {
    print("nil")
}

func getErrorCode(for name: String) -> Int? {
    return httpErrorCode[name]
}

func foo(_ opt: Int?) {
    
}

var someInt: Int! // implicitely unwrapped











let okCode = httpErrorCode["OK"]

let unknownCode = httpErrorCode["UNKNOWN"]
print(unknownCode)



weekDays
//: [Next](@next)
