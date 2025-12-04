class Vehicle {
    var wheels: Int
    init(wheels: Int) {
        self.wheels = wheels
    }
}

class Car: Vehicle {
    var brand: String
    init(brand: String, wheels: Int) {
        self.brand = brand
        super.init(wheels: wheels)
    }
}

var vehicles: [Vehicle] = []
for _ in 1...10000 {
    let car = Car(brand: "Toyota", wheels: 4)
    vehicles.append(car)
}