import Foundation

class Vehicle {
    var wheels: Int?
}

class Car: Vehicle {
    func startEngine() {
        print("Car engine started with \(wheels!) wheels")
    }
}

let v = Vehicle()
v.wheels = 4

if let car = v as? Car {
    car.startEngine()
} else {
    print("Not a car")
}