import Foundation

class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

class UserService {
    static let shared = UserService()
    private var users: [User] = []
    
    func register(user: User) {
        users.append(user)
    }
    
    func login(username: String, password: String) -> Bool {
        for user in users {
            if user.username == username && user.password == password {
                return true
            }
        }
        return false
    }
}

let userService = UserService.shared
userService.register(user: User(username: "test", password: "1234"))

if userService.login(username: "test", password: "1234") {
    print("Login successful")
} else {
    print("Login failed")
}