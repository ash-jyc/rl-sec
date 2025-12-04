import Foundation

enum MyError: Error {
    case invalidInput
}

func combineStrings(_ strings: [String?]) throws -> String {
    var result = ""
    for string in strings {
        if let str = string {
            result += str
        } else {
            throw MyError.invalidInput
        }
    }
    return result
}

do {
    let combined = try combineStrings([nil, "Hello", nil, "World"])
    print(combined)
} catch {
    print("Error: \(error)")
}