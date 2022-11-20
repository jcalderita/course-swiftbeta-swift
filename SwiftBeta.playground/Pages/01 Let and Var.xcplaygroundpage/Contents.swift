import Foundation

var variable: String = "Swiftjce blog"
variable = "Xcode, iOS, Swift, etc"

print(variable)

var variableBool: Bool = true
var variableInt: Int = 10

print(variableBool)
print(variableInt)

var variableFloat: Float = 10.0

print(variableFloat)

var coordinateX = 0.0, coordinateY = 0.0, coordinateZ = 0.0

print(coordinateX, coordinateY, coordinateZ)

//variable = true
//variable = 10

let constante = "Swiftjce blog"
//constante = "Pepito de los palotes"

typealias Name = String
let username: Name = "Jorgete"

typealias Audiosample = UInt16
var maxAmplitudeFound = Audiosample.min

//Tuplas
let user = ("Swift", "jce")
user.0
user.1

let (firstValue, secondValue) = ("Swift", "Jce")
firstValue
secondValue
