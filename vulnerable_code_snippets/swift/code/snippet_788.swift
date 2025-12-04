class Vehicle {
    var name: String
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}

var vehicle: Vehicle? = Vehicle(name: "Car")
vehicle = nil // This will cause the Vehicle instance to be deallocated, even though it's still strongly referenced by the variable `vehicle`