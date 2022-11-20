import Foundation

var numberOfSubscribers = 100
if numberOfSubscribers > 10 {
  print("A bunch of subscribers.")
} else if numberOfSubscribers == 1 {
  print("Number of subscribers 1.")
} else {
  print("Keep working.")
}

var isSubscribed = true

if numberOfSubscribers == 1, isSubscribed {
  print("Print this message")
}

var myArray: [String] = []

func checkMyArray() {
  guard !myArray.isEmpty else {
    print("Array is empty")
    return
  }
  print("Array is NOT empty!")
}

checkMyArray()

var myOptional: Int? = 2

func validateMyInt() {
  guard let value = myOptional else {
    print("myOptional is nil!")
    return
  }
  print("myOptional value is \(value)")
}

validateMyInt()

switch numberOfSubscribers {
case 100:
  print("A buch of subscribers")
default:
  print("Keep working")
}

switch numberOfSubscribers {
case let x where numberOfSubscribers > 0:
  print("A bunch of subscribers! TOTAL: \(x)")
default:
  print("Keep working!")
}

enum MessageStatus {
  case sent
  case delivered
  case read
}

let status: MessageStatus = .read

switch status {
case .sent:
  print("Message sent")
case .delivered:
  print("Message delivered")
case .read:
  print("Message read")
}

let names = ["jorgete", "uno", "dos"]

for name in names where name.count > 5 {
  print(name)
}

let namesWithNumber = [10: "jorgete", 20: "uno", 30: "dos"]

for (key, value) in namesWithNumber {
  print("Number \(key) and Number \(value)")
}

for index in 1...5 {
  print("Index \(index)")
}
var count = 0

while count < 10 {
  print("Count \(count)")
  count += 1
}

count = 0

repeat {
  print("Count \(count)")
  count += 1
} while count < 10
