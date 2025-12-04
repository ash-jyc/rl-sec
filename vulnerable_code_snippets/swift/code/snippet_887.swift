import Foundation

enum MyError: Error {
    case invalidInput
}

func processData(_ data: String?) throws -> String {
    if let unwrappedData = data {
        return "Processed \(unwrappedData)"
    } else {
        throw MyError.invalidInput
    }
}

do {
    let result = try processData(nil)
    print(result)
} catch {
    print("Caught error: \(error)")
}