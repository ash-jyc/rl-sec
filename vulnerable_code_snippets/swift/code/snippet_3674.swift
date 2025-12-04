import Foundation

struct User {
    var name: String
    var age: Int
}

func createUser(name: String, age: Int) -> User? {
    guard name.count <= 10, age >= 0 && age <= 150 else {
        return nil
    }
    
    let user = User(name: name, age: age)
    return user
}

let userInputName = readLine() ?? ""
let userInputAge = Int(readLine() ?? "") ?? 0

if let user = createUser(name: userInputName, age: userInputAge) {
    print("User created with name \(user.name) and age \(user.age)")
} else {
    print("Invalid user input")
}