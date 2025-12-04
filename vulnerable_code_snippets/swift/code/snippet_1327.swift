import Foundation

class User {
    var name: String?
}

func handleUserName(user: User?) -> String {
    return user?.name ?? "Default Name"
}

let user = User()
print(handleUserName(user: user))