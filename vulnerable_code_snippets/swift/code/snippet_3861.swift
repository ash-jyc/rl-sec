import Foundation

class Vehicle {
    var model: String?
}

class Car: Vehicle {
    var make: String?
}

func printCarDetails(car: Car?) {
    if let car = car {
        if let model = car.model {
            print("Model: \(model)")
        }
        if let make = car.make {
            print("Make: \(make)")
        }
    }
}

let myCar: Car? = .init()
printCarDetails(car: myCar)