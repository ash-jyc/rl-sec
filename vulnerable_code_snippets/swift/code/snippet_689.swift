import Foundation

func getUserName(userId: Int) -> String? {
    // Assume this function fetches user name from a database
    // For simplicity, let's return nil for even numbers as if the user doesn't exist
    return userId % 2 == 0 ? nil : "User\(userId)"
}

let userId = 4 // Try with both even and odd numbers
let userName = getUserName(userId: userId)
print("User Name: \(userName!)")