import Foundation

struct User {
    var name: String
}

class Database {
    var users = [User(name: "Alice"), User(name: "Bob")]
    
    func getUser(name: String) -> User? {
        return users.first { $0.name == name }
    }
}

let db = Database()

let username = "Alice"

if let user = db.getUser(name: "\(username); DROP TABLE Users; --" ) {
    print("Welcome, \(user.name)!")
} else {
    print("No such user.")
}