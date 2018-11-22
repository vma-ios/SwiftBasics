//: [Previous](@previous)

//:# Operations & Operation Queueus

import Foundation


//:## simple use case

var operationQueue = OperationQueue()
operationQueue.addOperation {
    print("executing block on operation queue")
    
    OperationQueue.main.addOperation {
        print("executing block on main operation queue")
    }
}

//:## Operation object

class CustomOperation: Operation {
    override func main() {
        guard !isCancelled else {
            print("escaping")
            return
        }
        print("executing main of custom operation")
        var i = 100000
        while i > 0 {
            if isCancelled {
                print("breaking at \(i)")
                break
            }
            i -= 1
        }
        print("finished")
    }
}
let operation = CustomOperation()
operationQueue.addOperation(operation)
operationQueue.cancelAllOperations()

//:## operation dependencies

let op1 = BlockOperation {
    print("operation 1")
}
let op2 = BlockOperation {
    print("operation 2")
}

operationQueue = OperationQueue()
op2.addDependency(op1)
operationQueue.addOperation(op2)
operationQueue.addOperation(op1)

//:## serial operation queue

operationQueue = OperationQueue()
operationQueue.maxConcurrentOperationCount = 1
operationQueue.addOperation { print("1st job") }
operationQueue.addOperation { print("2nd job") }


//: [see more in Operation](https://developer.apple.com/documentation/foundation/operation)

//: [Next](@next)
