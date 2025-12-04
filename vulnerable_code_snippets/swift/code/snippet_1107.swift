import Foundation

enum CustomError: Error {
    case invalidInput
}

func dangerousFunction(input: String?) -> String {
    let localVariable = input
    return localVariable
}

do {
    let result = try dangerousFunction(input: nil)
    print(result)
} catch {
    print("Error: \(error)")
}