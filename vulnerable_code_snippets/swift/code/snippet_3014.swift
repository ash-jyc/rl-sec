import Foundation

// This function might return nil
func getOptionalString() -> String? {
    let randomNumber = Int.random(in: 0...1)
    return randomNumber == 0 ? "Hello, World!" : nil
}

// This function uses the above function without checking if it returns nil
func printString() {
    let myString = getOptionalString()
    print(myString!) // No check if myString is nil which can cause a runtime error
}

printString()