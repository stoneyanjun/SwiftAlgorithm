//
//  Queue.swift
//  SwiftAlgorithms
//
//  Created by stone on 2022/2/23.
//

import Foundation

public struct Queue<T> {
    private var array: [T] = []
    
    public func isEmpty() -> Bool {
        array.isEmpty
    }
    
    public func count() -> Int {
        array.count
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func dequeue() -> T? {
        guard !isEmpty() else {
            return nil
        }
        
        return array.removeFirst()
    }
    
    public var front: T? {
        array.first
    }
}
