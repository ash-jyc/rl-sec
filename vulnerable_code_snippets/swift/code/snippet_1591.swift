import Foundation

class Vehicle {
    var wheels: Int?
    var doors: Int?
    
    func describe() -> String {
        return "This vehicle has \(wheels!) wheels and \(doors!) doors."
    }
}

let myCar = Vehicle()
myCar.wheels = 4
print(myCar.describe())