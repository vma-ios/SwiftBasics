//: [Previous](@previous)

//:# Grand Central Dispatch - Queues

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

/*:
 - Note:
 GCD provides and manages FIFO queues to which your application can submit tasks in the form of block objects.
 */

//:## basic pattern of use

/*:
 - Note:
 A dispatch queue can be either serial, so that work items are executed one at a time, or it can be concurrent, so that work items are dequeued in order, but run all at once and can finish in any order. Both serial and concurrent queues process work items in first in, first-out (FIFO) order.
 */

DispatchQueue.global().async {
    print("block executing asynchronously in background")
    
    DispatchQueue.main.async {
        print("block executing asynchronously on main queue")
    }
}

/*:
 - Note:
 When an app launches, the system automatically creates a special queue called the main queue. Work items enqueued to the main queue execute serially on your app’s main thread. You can access the main queue using the main type property.

Attention:
 Attempting to synchronously execute a work item on the main queue results in dead-lock.
 */

/*:
 - Note:
 In addition to the serial main queue, the system also creates a number of global concurrent dispatch queues. You can access the global concurrent queue that best matches a specified quality of service (QoS) using the global(attributes:) type method.
 */


//:## custom queues

//: serial queue

/*:
 - Note:
 A quality of service (QoS) class categorizes work to be performed on a DispatchQueue. By specifying a QoS to work, you indicate its importance, and the system prioritizes it and schedules it accordingly.
 The system infers the QoS from the context in which the queue is created, e.g. if from the main thread, the QoS is "userInitiated".
 */

let serialQueue = DispatchQueue(label: "SerialDispatchQueue", qos: .background)
serialQueue.async {
    print("block executing asynchronously in custom serial queue")
}

//: concurrent queue

let concurrentQueue = DispatchQueue(label: "ConcurrentDispatchQueue", qos: .background, attributes: .concurrent)
concurrentQueue.async {
    print("block executing asynchronously in custom concurrent queue")
}

//: [see more in Dispatch](https://developer.apple.com/documentation/dispatch)

//: [Next](@next)
