import Foundation

enum MyError: Error {
    case invalidInput
}

func concatStrings(a: String?, b: String?) throws -> String {
    guard let unwrappedA = a, let unwrappedB = b else {
        throw MyError.invalidInput
    }
    
    return unwrappedA + unwrappedB
}

do {
    let result = try concatStrings(a: "Hello", b: nil)
    print(result)
} catch {
    print("Invalid input")
}