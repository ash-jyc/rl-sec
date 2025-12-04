import Foundation

class Vehicle {
    var wheels: Int?
}

class Car: Vehicle {
    init() {
        super.init()
        super.wheels = 4
    }
}

class Bike: Vehicle {
    init() {
        super.init()Bs
        super.wheels = nil
    }
}

let car = Car()
let bike = Bike()

func printWheels(vehicle: Vehicle) {
    print("This vehicle has \(vehicle.wheels!) wheels")
}

printWheels(vehicle: car)
printWheels(vehicle: bike)