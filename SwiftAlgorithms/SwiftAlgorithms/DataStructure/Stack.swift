//
//  Stack.swift
//  SwiftAlgorithms
//
//  Created by stone on 2022/2/23.
//

import Foundation

public struct Stack<T> {
    private var array: [T] = []
    
    public func isEmpty() -> Bool {
        array.isEmpty
    }
    
    public func count() -> Int {
        array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        array.popLast()
    }
    
    public func peek() -> T? {
        array.last
    }
}
