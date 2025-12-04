import Foundation

struct User {
    var name: String?
}

func printUserName(user: User?) {
    print("User name is \(user.name)") // Unsafe unwrapping here
}

let user = User(name: "John Doe")
printUserName(user: user)