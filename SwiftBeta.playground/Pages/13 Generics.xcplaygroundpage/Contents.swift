//: [Previous](@previous)

import Foundation

func swapTwoStrings(_ a: inout String, _ b: inout String) {
    let tempA = a
    a = b
    b = tempA
}

var valueA = "Primera"
var valueB = "Segunda"

swapTwoStrings(&valueA, &valueB)

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let tempA = a
    a = b
    b = tempA
}

func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let tempA = a
    a = b
    b = tempA
}

swapTwoValues(&valueA, &valueB)


struct StackOfStrings {
    var items: [String] = [String]()
    
    mutating func push (_ item: String) {
        items.append(item)
    }
    
    mutating func pop() -> String {
        return items.removeLast()
    }
}

var stackOfStrings = StackOfStrings()
stackOfStrings.push("Hola")
stackOfStrings.push("Jorge")
stackOfStrings.push("Guapo")

stackOfStrings.items
print(stackOfStrings.items)
stackOfStrings.pop()
print(stackOfStrings.items)


struct Stack<Element> {
    var items: [Element] = [Element]()
    
    mutating func push (_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfInt = Stack<Int>()
stackOfInt.push(1)
stackOfInt.push(2)
stackOfInt.push(3)

stackOfInt.items
print(stackOfInt.items)
stackOfInt.pop()
print(stackOfInt.items)
//: [Next](@next)
