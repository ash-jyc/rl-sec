// This is a simple function that takes in two optional integers and returns their sum
func addTwoOptionalIntegers(a: Int?, b: Int?) -> Int {
    return a + b // This line will cause a potential null pointer exception if either a or b is nil
}

// Testing the function
let result = addTwoOptionalIntegers(a: 5, b: nil)
print(result)