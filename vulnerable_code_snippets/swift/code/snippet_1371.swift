import Foundation

class Vehicle {
    var wheels: Int?
}

class Car: Vehicle {
    func drive() {
        print("Driving with \(wheels) wheels")
    }
}

let vehicle = Vehicle()
if let car = vehicle as? Car {
    car.drive()
}