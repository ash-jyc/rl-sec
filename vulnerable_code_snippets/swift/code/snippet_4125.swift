class Animal {
    func speak() {
        print("Animal speaks")
    }
}

class Dog: Animal {
    override func speak() {
        print("Dog barks")
    }
}

let animal = Animal()

if let dog = animal as? Dog {
    dog.speak()
} else {
    print("Downcast failed")
}