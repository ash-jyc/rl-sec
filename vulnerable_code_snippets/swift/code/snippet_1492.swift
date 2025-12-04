import Foundation

class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

var users = [User]()

func registerUser(username: String, password: String) {
    let newUser = User(username: username, password: password)
    users.append(newUser)
}

func loginUser(username: String, password: String) -> Bool {
    for user in users {
        if user.username == username && user.password == password {
            return true
        }
    }
    return false
}

registerUser(username: "admin", password: "password")
if loginUser(username: "admin", password: "password") {
    print("Login successful")
} else {
    print("Login failed")
}