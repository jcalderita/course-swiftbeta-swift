import Foundation

func createUser(name: String, age: Int) -> Bool {
  print("User name: \(name)")
  print("User name: \(age)")
  return true
}

print(createUser(name: "Jorgete", age: 42))
createUser(name: "Jorgete", age: 42)

let createUserFunction = createUser(name:age:)

func sum(numberOne: Int, numberTwo: Int) -> Int {
  return numberOne + numberTwo
}

func showMessage(message: String, name: String) -> String {
  return "\(message) \(name)"
}

func getTwoValues() -> (String, String) {
  let name = "Jorgete"
  let type = "holita"
  return (name, type)
}

let (name, type) = getTwoValues()

func printMessage(parameterOne name: String, parameterTwo type: String) {
  print("\(name), \(type)")
}

printMessage(parameterOne: "uno", parameterTwo: "dos")
//: [Next](@next)

func printMessage2(_ parameterOne: String, _ parameterTwo: String) {
  print("\(parameterOne), \(parameterTwo)")
}

printMessage2("uno", "dos")

func validate(names: String...) {
  print("Names \(names)")
}

validate(names: "uno", "dos", "tres")

func validateNames(names: inout [String]) {
  names = ["uno", "dos", "tres"]
  print(names)
}

var arrayOfNames = ["holita"]
validateNames(names: &arrayOfNames)
print(arrayOfNames)

func createDatabase(name: String = "/documents") {
  print("Creating database \(name)")
}

createDatabase()
createDatabase(name: "/Desktop")
