import Foundation

class Vehicle {
    var make: String?
    var model: String?
    
    func getDetails() -> String {
        return "Make: \(make), Model: \(model)"
    }
}

let myCar = Vehicle()
print(myCar.getDetails())