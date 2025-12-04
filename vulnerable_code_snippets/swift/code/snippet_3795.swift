import Foundation

enum MyError: Error {
    case unexpectedNil
}

func handleOptional(_ optionalValue: Int?) throws -> Int {
    guard let unwrappedValue = optionalValue else {
        throw MyError.unexpectedNil
    }
    return unwrappedValue
}

do {
    let result = try handleOptional(nil)
    print(result)
} catch let error as MyError {
    switch error {
    case .unexpectedNil:
        print("Unexpected nil value")
    }
} catch {
    print("An unknown error occurred")
}