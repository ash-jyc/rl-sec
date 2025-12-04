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

func getAnimalName(_ animal: Animal?) -> String? {
    switch animal {
    case .dog(let dog):
        return dog.name
    case .cat(let cat):
        return cat.name
    default:
        return nil
    }
}

let myDog = Dog(name: "Bobby", age: 5)
let myCat = Cat(name: "Kitty", age: 3)

let dogName = getAnimalName(myDog) // This will cause a compile-time error because myDog is of type Dog, not Animal
let catName = getAnimalName(myCat) // This will cause a compile-time error because myCat is of type Cat, not Animal

print(dogName)
print(catName)