/// Playground: Creating a Stack using Swift.

import UIKit

public struct Stack<T> {
    private var array = [T]()
    
    /// Check if the stack is empty
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    /// Get the last element inserted
    public var top: T? {
        return array.last
    }
    
    /// Get the total number of elements
    public var count: Int {
        return array.count
    }
    
    /// Add an element
    /// - parameter push: element to insert
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    /// Add an element
    /// - returns: The removed element
    public mutating func pop() -> T? {
        return array.popLast()
    }
}

// Let's use it

var stack = Stack<Int>()
stack.push(6)
stack.push(7)
// The stack contains now [6,7]

stack.count

stack.pop()
// now the stack contains [6]
stack.pop()
// now it is empty :(
stack.isEmpty
stack.count
