import Foundation

struct User {
    var name: String
}

class Database {
    var users = [User(name: "Alice"), User(name: "Bob")]
    
    func findUser(name: String) -> User? {
        return users.first { $0.name == name }
    }
}

let db = Database()

let userInput = "Alice\"; DROP TABLE Users; --" // Injecting SQL statement

if let user = db.findUser(name: "\(userInput)") {
    print("Hello, \(user.name)!")
} else {
    print("User not found.")
}