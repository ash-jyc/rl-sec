import Foundation

func fetchUserName(userId: Int) -> String? {
    // Assume this function fetches user name from a database
    // In reality, it may return nil if user does not exist
    return UserDatabase.getUserName(userId: userId)
}

func printUserName(userId: Int) {
    let userName: String = fetchUserName(userId: userId)! // This line is a potential null pointer exception risk
    print("User's name is \(userName)")
}

printUserName(userId: 123)