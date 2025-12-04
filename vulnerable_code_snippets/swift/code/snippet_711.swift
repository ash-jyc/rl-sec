import Foundation

enum MyError: Error {
    case invalidInput
}

func processData(_ data: String) throws -> String {
    guard let number = Int(data) else {
        throw MyError.invalidInput
    }
    
    return "Processed \(number)"
}

DispatchQueue.global().async {
    do {
        let result = try processData("Hello World")
        print(result)
    } catch {
        print("An error occurred: \(error)")
    }
}