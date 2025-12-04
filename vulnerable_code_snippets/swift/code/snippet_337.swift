import Foundation

class Vehicle {
    var wheels: Int?
}

class Car: Vehicle {
    func drive() {
        print("Driving car with \(wheels!) wheels")
    }
}

let myCar = Car()
myCar.drive()