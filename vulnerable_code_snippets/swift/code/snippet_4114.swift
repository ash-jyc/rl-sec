import Foundation

class User {
    var name: String?
}

var users = [User]()

func printUserNames() {
    for user in users {
        print(user.name!) // This line can throw a runtime error if user.name is nil
    }
}

let user1 = User()
users.append(user1)

printUserNames()