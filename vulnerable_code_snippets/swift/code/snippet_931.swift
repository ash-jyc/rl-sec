import Foundation

class User {
    var name: String?
}

func getUserName(user: User?) -> String {
    return user.name // Potential null pointer exception here
}

let user = User()
print(getUserName(user: user))