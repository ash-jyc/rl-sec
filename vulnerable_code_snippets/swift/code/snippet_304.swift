import Foundation

func handleInput(input: String) {
    var buffer = Array<Character>(repeating: " ", count: 10)
    let inputArray = Array(input)
    
    for i in 0..<inputArray.count {
        buffer[i] = inputArray[i]  // This line can cause a buffer overflow if input is larger than buffer size
    }
}

let testInput = "This is a long string that will cause a buffer overflow"
handleInput(input: testInput)