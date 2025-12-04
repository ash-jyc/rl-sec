import Foundation

func divideNumbers(numerator: Int, denominator: Int) -> Int {
    return numerator / denominator
}

let userInput = readLine()
let numerator = Int(userInput!)
let denominator = 0

let result = divideNumbers(numerator: numerator, denominator: denominator)
print(result)