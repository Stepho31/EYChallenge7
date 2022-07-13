import UIKit
import Combine

/*
 Demonstrate your understanding of Combine’s Publisher and Subscriber by creating a simple publisher that you can subscribe to.  After subscribing, demonstrate that you receive and respond to events (write to debug log) and that you can canel the subscription if desired.
 */



var subscriber: Cancellable? = Timer.publish(every: 2, on: .main, in: .default)
    .autoconnect()
    .sink { time in
        print("Data received: \(time)")
    }


DispatchQueue.global().asyncAfter(deadline: .now() + 10) {
    print("Cancelling Subscriber Connection")
    subscriber?.cancel()
}

