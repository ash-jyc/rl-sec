import Foundation

enum Animal {
    case dog(Dog)
    case cat(Cat)
}

struct Dog {
    let name: String
    let age: Int
}

struct Cat {
    let name: String
    let age: Int
}

func getAnimalAge(_ animal: Animal?) -> Int {
    switch animal {
    case .dog(let dog):
        return dog.age
    case .cat(let cat):
        return cat.age
    default:
        return 0
    }
}

let myDog = Dog(name: "Bobby", age: 5)
let myCat = Cat(name: "Sylvester", age: 3)

let dogAge = getAnimalAge(myDog) // This will crash because `myDog` is not an optional
let catAge = getAnimalAge(myCat) // This will crash because `myCat` is not an optional

print("Dog Age: \(dogAge)")
print("Cat Age: \(catAge)")