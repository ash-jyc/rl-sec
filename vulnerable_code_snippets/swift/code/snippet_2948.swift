import Foundation

class Vehicle {
    let wheels: Int
    
    init(wheels: Int) {
        self.wheels = wheels
    }
}

class Car: Vehicle {
    var color: String
    
    init(color: String, wheels: Int) {
        self.color = color
        super.init(wheels: wheels)
    }
    
    func changeColor(newColor: String) {
        self.color = newColor
    }
}

let myCar = Car(color: "Red", wheels: 4)
print("My car is \(myCar.color)")

myCar.changeColor(newColor: "Blue")
print("My car is now \(myCar.color)")