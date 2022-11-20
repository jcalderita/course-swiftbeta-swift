//: [Previous](@previous)

import Foundation

class Vehicle {
    var currentSpeed = 0.0
    
    var description: String {
        return "traveling at \(currentSpeed)"
    }
    
    func makeNoise() {
        print ("Vehicle noise...")
    }
}

let someVehicle = Vehicle()
someVehicle.description



class Bicycle: Vehicle {
    var hasBasket: Bool
    
    init(hasBasket: Bool) {
        self.hasBasket = hasBasket
    }
    
    override func makeNoise() {
        print("Bicycle noise...")
    }
}

let bicycle = Bicycle(hasBasket: true)
bicycle.currentSpeed
bicycle.makeNoise()


class Train: Vehicle {
    override var description: String{
        return "train"
    }
    override func makeNoise() {
        print("Chocho")
    }
}

let train = Train()
train.makeNoise()
train.description

class User {
    var name: String = "User"
    
    final func create(){
        print("Creating user...")
    }
}

class Admin: User {
}

//: [Next](@next)





