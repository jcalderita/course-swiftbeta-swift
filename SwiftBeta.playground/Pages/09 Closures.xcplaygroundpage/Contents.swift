import Foundation

let closure = {(value: Int) -> Int in
    print("Value \(value)")
    return value
}

print(closure(2))

func returnInteger(value: Int) -> Int {
    return value
}

let function = returnInteger(value:)

print(returnInteger(value: 2))

var names = ["uno", "dos", "tres", "cuatro", "cinco"]
let namesOrdered = names.sorted(by: <)

print(namesOrdered)

func backward(_ stringOne: String, _ stringTwo: String) -> Bool {
    return stringOne > stringTwo
}

let namesSortedWithFunction = names.sorted(by: backward)
print(namesSortedWithFunction)

func saveUser(name: String, completionBlock: (Bool) -> Void) {
    //Do something
    print("Saving user...")
    completionBlock(true)
}

saveUser(name: "Prueba") { boolean in
    print("Closure \(boolean)")
}

enum BackendError {
    case customError
}

func getDataFromBackend(status: String, onSuccess: () -> Void, onFailure:(BackendError) -> Void) {
    if status == "OK" {
        onSuccess()
    } else {
        onFailure(.customError)
    }
}


getDataFromBackend(status: "OK") {
    print("onSucces")
} onFailure: { (error) in
    print("onFailure \(error)")
}

