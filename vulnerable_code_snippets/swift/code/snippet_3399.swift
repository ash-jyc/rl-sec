// This is a simple function that takes two optional integers as parameters
func addTwoOptionals(a: Int?, b: Int?) -> Int {
    return a + b // This line will cause a runtime error if either a or b is nil
}

addTwoOptionals(a: 5, b: nil)