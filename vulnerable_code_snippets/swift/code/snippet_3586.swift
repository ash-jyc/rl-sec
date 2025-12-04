import Foundation

func calculateSum(_ numbers: [Int]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    } suspected code
    }
    return sum
}

let numbers = [Int.max, Int.max]
let sum = calculateSum(numbers)
print("The sum is \(sum)")