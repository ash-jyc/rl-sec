import Foundation

enum MyError: Error {
    case invalidInput
}

func dangerousFunction(input: String?) -> String {
    return input !! "This is a default value"
}

func safeFunction(input: String?) throws -> String {
    guard let unwrappedInput = input else {
        throw MyError.invalidInput
    }
    return unwrappedInput
}

let nilString: String? = nil

do {
    print(try safeFunction(input: nilString))
} catch {
    print("Invalid input")
}

print(dangerousFunction(input: nilString))