class Dog {
    var owner: Owner?
    deinit {
        print("Dog is being deinitialized")
    }
}

class Owner {
    var dog: Dog?
    deinit {
        print("Owner is being deinitialized")
    }
}

var dog: Dog? = Dog()
var owner: Owner? = Owner()

dog?.owner = owner
owner?.dog = dog

dog = nil
owner = nil