import Foundation

struct User {
  var name: String
  static var type: String = "Blog"

}

let user = User(name: "Jorge")
// print(user.name)
// print(User.type)

struct Person {
  var salary: Int = 10_000

  var salaryPerMonth: Int {
    get {
      return salary / 12
    }
    set(newValue) {
      self.salary = newValue
    }
  }
}

var person = Person()
// print(person.salaryPerMonth)
// person.salaryPerMonth = 20_000
// print(person.salaryPerMonth)

struct Database {
  var name: String {
    willSet(newName){
      print("Will set \(name)")
    }

    didSet{
      print("Added \(name)")
    }
  }
}

var database = Database(name: "Prueba")
database.name = "Pepito"
