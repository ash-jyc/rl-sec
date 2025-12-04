import Foundation

func addTwoNumbers(a: Int, b: Int) -> Int {
    return a + b
}

let maxInt = Int.max
let minInt = Int.min

print(addTwoNumbers(a: maxInt, b: 1)) // This will cause an overflow
print(addTwoNumbers(a: minInt, b: -1)) // This will cause an underflow