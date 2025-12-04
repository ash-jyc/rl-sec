import Foundation

func authenticateUser(username: String, password: String) -> Bool {
    let correctUsername = "admin"
    let correctPassword = "password123"
    
    guard username == correctUsername && password == correctPassword else {
        print("Authentication failed.")
        return false
    }
    
    print("Authentication successful.")
    return true
}

let result = authenticateUser(username: "user", password: "pass")
print("Result: \(result)")