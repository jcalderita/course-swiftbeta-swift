import Foundation

protocol MyProtocol {
  func printMyName()
}

class SomeClass: MyProtocol {
  var name: String

  init(name: String) {
    self.name = name
  }

  deinit{
    name = ""
  }

  func validateName() {
    guard name.count > 6 else {
      print("Name is NOT valid")
      return
    }
    print("Name valid")
  }

  func printMyName() {
    print("Protocol method")
  }
}

extension SomeClass {
  func printMessage() {
    print("Method from extension")
  }
}

struct SomeStruct: MyProtocol {
  var name: String

  init(name: String){
    self.name = name
  }
  func validateName() {
    guard name.count > 6 else {
      print("Name is NOT valid")
      return
    }
    print("Name valid")
  }

  func printMyName() {
    print("Protocol method")
  }
}

extension SomeStruct {
  func printMessage() {
    print("Method from extension")
  }
}

let someClass = SomeClass(name: "Jorge")
let someStruct = SomeStruct(name: "Jorgete")

// someClass.validateName()
// someStruct.validateName()

// someClass.printMessage()
// someStruct.printMessage()

// someClass.printMyName()
// someStruct.printMyName()

class Vehicle {
  var wheels: Int

  init(wheels: Int){
    self.wheels = wheels
  }

  func start() {
    print("Start engine...")
  }
}

class BMW: Vehicle {

}

let bmw = BMW(wheels: 4)

class UserClass {

  var name: String

  init(name: String){
    self.name = name
  }
}

struct UserStruct {

  var name: String
}

let userClass = UserClass(name: "Clase")
let userStruct = UserStruct(name: "Struct")

var newUserClass = userClass
var anotherUserClass = userClass

// print(userClass.name)
// print(newUserClass.name)
// print(anotherUserClass.name)

anotherUserClass.name = "Pepito"

// print(userClass.name)
// print(newUserClass.name)
// print(anotherUserClass.name)

var newUserStruct = userStruct
var anotherUserStruct = userStruct

print(userStruct.name)
print(newUserStruct.name)
print(anotherUserStruct.name)

anotherUserStruct.name = "Pepito"

print(userStruct.name)
print(newUserStruct.name)
print(anotherUserStruct.name)˜
