class Dog {
    var name: String
    var owner: Owner?
    
    init(name: String) {
        self.name = name
    }
}

class Owner {
    var name: String
    var dog: Dog?
    
    init(name: String) {
        self.name = name
    }
}

var dog1 = Dog(name: "Max")
var owner1 = Owner(name: "John")

dog1.owner = owner1
owner1.dog = dog1

// Now, dog1 and owner1 have strong references to each other, creating a strong reference cycle. 
// If you set these references to nil, they will not be deallocated from memory, leading to a memory leak.

dog1 = nil
owner1 = nil