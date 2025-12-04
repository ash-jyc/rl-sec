import Foundation

struct User {
    var name: String?
}

func greetUser(user: User?) -> String {
    return "Hello, \(user.name)"
}

let user = User()
print(greetUser(user: user))