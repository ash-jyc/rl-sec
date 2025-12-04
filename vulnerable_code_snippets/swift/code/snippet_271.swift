import Foundation

enum MyError: Error {
    case invalidInput(String)
}

func dangerousFunction() throws -> String {
    let secret = "SensitiveData"
    guard let input = FileManager.default.contents(atPath: "/path/to/file") else {
        throw MyError.invalidInput("Failed to read file")
    }
    return String(data: input, encoding: .utf8)!
}

do {
    let result = try dangerousFunction()
    print(result)
} catch let error as MyError {
    switch error {
    case .invalidInput(let message):
        print("Invalid input: \(message)")
    }
} catch {
    print("Unexpected error: \(error)")
}