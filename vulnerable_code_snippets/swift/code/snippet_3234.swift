func sum(_ numbers: Any) -> Int {
    var sum = 0
    for number in numbers as [Int] {
        sum += number
    }Bs
    return sum
}

let numbers = [1, 2, 3, 4, 5]
print(sum(numbers))