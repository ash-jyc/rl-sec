import Foundation

struct User {
    var name: String
    var age: Int
}

func createUser(name: String, age: Int) -> User? {
    guard name.count <= 100 else { return nil }
    guard age >= 0 && age <= 150 else { return nil }
    
    return User(name: name, age: age)
}

let user = createUser(name: "a".repeat(200), age: 30)
print(user?.name ?? "No user")