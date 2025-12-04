import Foundation

enum MyError: Error {
    case invalidInput
}

func dangerousFunction(input: String) throws -> Int {
    guard let number = Int(input) else {
        throw MyError.invalidInput
    }
    return number
}

func callingFunction() {
    do {
        let result = try dangerousFunction(input: "abc")
        print("Result: \(result)")
    } catch {
        print("Error: \(error)")
    }
}

callingFunction()