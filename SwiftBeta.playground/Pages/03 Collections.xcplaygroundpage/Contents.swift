import Foundation

// var newYork = "NY"
// var sanFrancisco = "San Francisco"
// var barcelona = "Barcelona"

// var listOfCities = [newYork, sanFrancisco, barcelona]
// print(listOfCities)

// listOfCities.forEach {city in
//   print(city)
// }

// let firstCity = listOfCities.first!
// print(firstCity)

// listOfCities.removeFirst()
// print(listOfCities)

// Arrays
// var arrayStrings: [String]
// var array2Strings: Array<String>

// var someInts = [Int]()
// var some2Insts: [Int] = []

// var array3Strings = ["Uno", "Dos"]

var arrayStrings = ["1", "2", "3"]
print("The arrayStrings contains \(arrayStrings.count) items")

if arrayStrings.isEmpty {
  print("arrayString is empty.")
} else {
  print("arrayString is not empty.")
}

arrayStrings.append("4")
arrayStrings += ["5", "6"]

print(arrayStrings)

arrayStrings.insert("7", at: 0)
print(arrayStrings)

arrayStrings.remove(at: 0)
arrayStrings.removeFirst()
print(arrayStrings)

arrayStrings.reverse()
arrayStrings.shuffle()

print(arrayStrings)

// Set
// var setStrings = Set(["1", "2", "3"])
var setStrings = Set(arrayLiteral: "1", "2", "3")
print(setStrings)
print("setStrings contains \(setStrings.count) items.")

if setStrings.isEmpty {
  print("setString is empty.")
} else {
  print("setString is not empty.")
}

setStrings.insert("4")
setStrings.contains("1")

for value in setStrings {
  print(value)
}

setStrings.forEach {value in
  print(value)
}

setStrings.insert("10")
setStrings.insert("10")
print(setStrings)

//Dictionary
// var dictionary1 = [String: String]()
// var dictionary: [String: String] = [:]

// var dictionaryWithValues = ["clave1":"valor1", "clave2":"valor2"]

var dictionary = ["name":"jce", "coordinateX": "1.0", "coordinateY":"1.0"]

print("Dictionary \(dictionary.keys.count) items.")

if dictionary.isEmpty {
  print("dictionary is empty.")
} else {
  print("dictionary is not empty.")
}

dictionary["coordinateZ"] = "2.0"
print(dictionary)

if let oldValue = dictionary.updateValue("10.0", forKey: "coordinateZ") {
  print("The old value for coodinateZ was \(oldValue).")
}

print(dictionary["coordinateZ"])

if let removedValue = dictionary.removeValue(forKey: "coordinateZ") {
  print("The removed value is \(removedValue)")
}

print(dictionary)

dictionary["coordinateY"] = nil

print(dictionary)

dictionary["coordinateY"] = "10"
let value = dictionary["coordinateY"]

