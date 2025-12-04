import Foundation

struct User {
    let name: String
    let age: Int
}

func parseUser(jsonString: String) -> User? {
    guard let jsonData = jsonString.data(using: .utf8) else { return nil }
    do {
        let json = try JSONSerialization.jsonObject(with: jsonData, options: []) as Any
        let userDict = json as NSDictionary
        let name = userDict["name"] as Any
        let age = userDict["age"] as Any
        return User(name: name as String, age: age as Int)
    } catch {
        print("Error parsing JSON: \(error)")
        return nil
    }
}

let jsonString = "{\"name\": \"John Doe\", \"age\": \"twenty\"}"
if let user = parseUser(jsonString: jsonString) {
    print("User's name is \(user.name) and they are \(user.age) years old.")
} else {
    print("Failed to parse user from JSON string.")
}