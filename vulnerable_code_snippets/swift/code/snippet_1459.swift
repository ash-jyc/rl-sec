import Foundation

enum MyError: Error {
    case invalidInput
}

func processData(_ data: String?) throws -> String {
    guard let unwrappedData = data else {
        throw MyError.invalidInput
    }
    
    return unwrappedData
}

do {
    let result = try processData(nil)
    print(result)
} catch let error as MyError {
    switch error {
    case .invalidInput:
        print("Invalid input")
    }
} catch {
        print("Unexpected error: \(error).")
}