import Foundation

func processData(_ data: [String: Any]) {
    guard let name = data["name"] as? String,
          let age = data["age"] as? Int,
          let address = data["address"] as? String else {
        print("Invalid data")
        return
    }
    
    print("Name: \(name), Age: \(age), Address: \(address)")
}

let dict: [String: Any] = ["name": "John Doe", "age": 30, "address": nil]
processData(dict)