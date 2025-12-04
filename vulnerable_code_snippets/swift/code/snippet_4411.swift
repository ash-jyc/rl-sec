import Foundation

class User {
    var name: String?
    
    init(name: String?) {
        self.name = name
    }
}

func getUserName(user: User) -> String {
    return user.name // This line could cause a runtime error if user.name is nil
}

let user = User(name: nil)
print(getUserName(user: user))