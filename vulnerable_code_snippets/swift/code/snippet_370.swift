import Foundation

enum Animal {
    case dog(Int)
    case cat(String)
}

func processAnimal(_ animal: Animal?) {
    switch animal {
    case .dog(let age):
        print("Dog: \(age)")
    case .cat(let name):
        print("Cat: \(name)")
    default:
        print("Unknown animal")
    }
}

processAnimal(nil)