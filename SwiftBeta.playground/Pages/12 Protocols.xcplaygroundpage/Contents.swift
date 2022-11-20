//: [Previous](@previous)

import Foundation

protocol MyProtocol {
    var mustBeSettable: Int {get set}
    var doesNotNeedToBeSettable: Int {get}
}

struct SomeStruct: MyProtocol {
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int
    
}

class Current {}

let someStruct: MyProtocol = SomeStruct(mustBeSettable: 1, doesNotNeedToBeSettable: 1)


//class SomeClass: Current, MyProtocol {
//
//}


protocol SomeOtherProtocol {
    static var someTypeProperty: Int {get set}
}

protocol Shippeable {
    var street: String {get}
    var city: String {get}
    var zip: String {get}
}

struct Product: Shippeable {
    var id: String
    var name: String
    var street: String
    var city: String
    var zip: String
}

protocol Calculable {
    func calculate() -> String
}

struct Calculator: Calculable {
    func calculate() -> String {
        return ""
    }
}

protocol Initializable {
    init(parameterOne: String, parameterTwo: String)
    init(parameterTwo: String)
}

struct User: Initializable {
    init(parameterOne: String, parameterTwo: String) {
    }
    init(parameterTwo: String) {
    }
}


protocol Animatable {
    func animate()
}

extension Animatable {
    func animate(){
        print("Start animation...")
    }
}

class MyCustomView: Animatable {}
let myView = MyCustomView()
myView.animate()
//: [Next](@next)
