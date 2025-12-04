import Foundation

func processData(_ input: String) -> String {
    var output = ""
    for i in 0..<input.count {
        output.append(input[input.index(input.startIndex, offsetBy: i)])
    }
    return output
}

let userInput = "This is a very long string that will cause a buffer overflow in our program."
print(processData(userInput))