import Foundation

class Vehicle {
    var make: String?
    var model: String?
    
    init(make: String?, model: String?) {
        self.make = make
        self.model = model
    }
}

let vehicle1 = Vehicle(make: "Toyota", model: nil)

print("Vehicle 1: \(vehicle1.make ?? "Unknown") \(vehicle1.model ?? "Unknown")")

let vehicle2 = Vehicle(make: nil, model: "Corolla")

print("Vehicle 2: \(vehicle2.make ?? "Unknown") \(vehicle2.model ?? "Unknown")")

let vehicle3 = Vehicle(make: nil, model: nil)

print("Vehicle 3: \(vehicle3.make ?? "Unknown") \(vehicle3.model ?? "Unknown")")