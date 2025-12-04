import Foundation

class User {
    var name: String?
}

func processUser(user: User?) -> String {
    return "Hello, \(user?.name ?? "Stranger")!"
}

let user = User()
print(processUser(user: user))