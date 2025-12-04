import Foundation

enum MyError: Error {
    case invalidInput
}

func dangerousFunction(input: String?) throws -> String {
    guard let unwrappedInput = input else {
        throw MyError.invalidInput
    }
    return unwrappedInput
}

do {
    let result = try dangerousFunction(input: nil)
    print(result)
} catch {
    print("Caught error: \(error)")
}