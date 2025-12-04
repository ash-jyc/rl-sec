// Define a function that takes an optional string as parameter
func printString(_ str: String?) {
    // Try to access the optional string
    let uppercased = str?.uppercased()
    print(uppercased)
}

// Call the function with nil
printString(nil)