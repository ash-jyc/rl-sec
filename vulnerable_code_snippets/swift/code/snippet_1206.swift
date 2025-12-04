import Foundation

class User {
    var username: String
    var password: String
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}

class AuthenticationService {
    func authenticate(user: User) -> Bool {
        // This is a dummy authentication service. In a real-world scenario, you would check the credentials against a database.
        if user.username == "admin" && user.password == "password" {
            return true
        } else {
            return false
        }
    }
}

let user = User(username: "admin", password: "password")
let authService = AuthenticationService()

if authService.authenticate(user: user) {
    print("User \(user.username) authenticated successfully.")
} else {
    print("Authentication failed for user \(user.username).")
}