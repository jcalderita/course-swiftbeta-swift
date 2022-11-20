import Foundation

//let myStringNumber = "123"
//let myNumber = Int(myStringNumber)
//
//print(myNumber)
//
//let myString = "Hello"
//let myOptionalInt = Int(myString)
//
//print(myOptionalInt)
//
//var username: String? = "Jorgete"
//username = nil

//var name: String = "jorge"
//name = nil
//
//var prueba: Bool = 45

//enum CustomOptional<Wrapped> {
//    case none
//    case some(Wrapped)
//}
//
//let myOptionalInt = CustomOptional<Int>.none
//let myInt = CustomOptional<Int>.some(10)
//let myAnotherInt: CustomOptional<Int> = .some(15)
//
//print(myOptionalInt, myInt, myAnotherInt)

let myStringNumber = "123"
let myNumber = Int(myStringNumber)

//let sumOptional = myNumber + 1

if let value = myNumber {
    print(value + 1)
}

myNumber.map { value in
    print(value)
}

var myMapValue: Int = 0
myNumber.map { value in
    myMapValue = value
}

let result = myNumber ?? 0

let myString = "Hello"
let myOptionalInt = Int(myString)

print(myNumber!)
