//: [Previous](@previous)

import Foundation

enum MessageStatus {
    case sent
    case received
    case read
}

let status: MessageStatus = MessageStatus.sent
print(status)

enum CompassPoint: CaseIterable {
    case north, south, east, west
}

var pointOne = CompassPoint.north
var pointTwo: CompassPoint = .north

switch pointOne {
case .north:
    print("North")
case .south:
    print("South")
case .east:
    print("East")
case .west:
    print("West")
}

CompassPoint.allCases

enum Field {
case name(String)
    case street(String)
    case phone(number: String)
}

let name: Field = .name("Jorge")
let street: Field = .street("casa")
let phone: Field = .phone(number: "43542324")


enum MessageEncoded: String {
    case keyOne = "123456789"
    case keyTwo = "querty"
}

let messageEncoded = MessageEncoded.keyOne.rawValue

if messageEncoded.isEmpty {
    print("Vacio")
} else {
    print("No esta vacio")
}


//: [Next](@next)
