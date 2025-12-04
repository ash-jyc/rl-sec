import Foundation

class Vehicle {
    var make: String?
    var model: String?
}

class Car: Vehicle {
    var color: String?
}

func printCarDetails(car: Car?) {
    guard let car = car else { return }
    guard let make = car.make else { return }
    guard let model = car.model else { return }
    guard let color = car.color else { return }
    
    print("Make: \(make), Model: \(model), Color: \(color)")
}

let myCar: Car? = nil
printCarDetails(car: myCar)