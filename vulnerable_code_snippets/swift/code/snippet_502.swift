import Foundation

class Animal {
    func makeSound() {
        print("Generic animal sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Woof")
    }
}

func playWithAnimal(_ animal: Animal?) {
    animal?.makeSound()
}

let dog = Dog()
playWithAnimal(dog)  // prints "Woof"

let animal: Animal? = nil
playWithAnimal(animal)  // crashes the application