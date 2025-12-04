class Vehicle {
    var wheelCount: Int?
}

class Car: Vehicle {
    func carDetails() -> String {
        return "This car has \(wheelCount) wheels"
    }
}

let myCar = Car()
print(myCar.carDetails())