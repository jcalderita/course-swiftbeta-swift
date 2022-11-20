import Foundation

func validateEmail(email: String) {
  //Do something
}

validateEmail(email: "lldjaljdal")

struct User {
  func validate(user: String) {
    //Do something
  }

  static func create(user: String) {
    //Do something
  }
}


let user = User()
user.validate(user: "jorgete")
User.create(user: "pepito")

class Worker {
  var count = 0

  func increment(){
    count += 1
  }

  func increment(by amount: Int) {
    count += amount
  }

  func reset(){
    count = 0
  }
}

let worker = Worker()
worker.increment()
print(worker.count)
