import Foundation

enum VehicleType {
    case car
    case bike
}

class Vehicle {
    var type: VehicleType?
    var speed: Int?
    
    func drive() {
        switch type {
        case .car:
            print("Driving \(speed!) km/h") // Force unwrapping here
        case .bike:
            print("Riding \(speed!) km/h") // Force unwrapping here
        default:
            break
        }
    }
}

let bike = Vehicle()
bike.type = .bike
bike.drive()