import Foundation

enum MyError: Error {
    case unwrappedNil
}

func unwrapOptional(_ value: Int?) throws -> Int {
    guard let unwrappedValue = value else {
        throw MyError.unwrappedNil
    }
    return unwrappedValue
}

do {
    let result = try unwrapOptional(nil)
    print(result)
} catch let error as MyError {
    switch error {
    case .unwrappedNil:
        print("Unwrapped nil value")
    }
} catch {
    print("Unexpected error: \(error)")
}