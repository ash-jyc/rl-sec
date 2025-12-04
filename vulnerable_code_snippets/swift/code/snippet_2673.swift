func calculate(numbers: [Int?]) -> Int {
    var sum = 0
    for number in numbers {
        sum += number // This line can cause a null pointer exception if number is nil
    }
    return sum
}

let numbers = [1, 2, nil, 4, nil]
print(calculate(numbers: numbers))