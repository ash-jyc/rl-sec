import Foundation

class Vehicle {
    var wheels: Int?
}

class Car: Vehicle {
    func drive() {
        print("Driving with \(wheels ?? 0) wheels")
    }
}

let myCar = Car()
myCar.drive()