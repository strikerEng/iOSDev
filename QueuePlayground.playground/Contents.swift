import UIKit

let queueOne = DispatchQueue(label: "queue1")
let queueTwo = DispatchQueue(label: "queue2")
let queueThree = DispatchQueue(label: "queue3")

// Async code completes in an unpredictable manner
//queueOne.async { () -> Void in
//    print(queueOne.label)
//}
//
//queueTwo.async { () -> Void in
//    print(queueTwo.label)
//}
//
//queueThree.async { () -> Void in
//    print(queueThree.label)
//}
//
//print("Program stopped.")

// Sync code completes in an ordered manner
queueOne.sync { () -> Void in
    print(queueOne.label)
}

queueTwo.sync { () -> Void in
    print(queueTwo.label)
}

queueThree.sync { () -> Void in
    print(queueThree.label)
}

print("Program stopped.")
