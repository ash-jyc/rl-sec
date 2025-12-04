import Foundation

class Animal {
    var name: String

    init(name: String) {
        self.name = name
    }
}

class Dog: Animal {
    var barkingVolume: Int

    init(name: String, barkingVolume: Int) {
        self.barkingVolume = barkingVolume
        super.init(name: name)
    }
}

let animal = Animal(name: "Generic Animal")
print("Animal's name: \(animal.name)")

let dog = unsafeBitCast(animal, to: Dog.self)
print("Dog's name: \(dog.name)")
print("Dog's barking volume: \(dog.barkingVolume)")