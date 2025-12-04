import Foundation

func dangerousFunction(input: String?) {
    let danger = input
    print(danger!)
}

func safeFunction(input: String?) {
    if let safeInput = input {
        print(safeInput)
    } else {
        print("Input was nil")
    }
}

let testInput: String? = nil

dangerousFunction(input: testInput)
safeFunction(input: testInput)