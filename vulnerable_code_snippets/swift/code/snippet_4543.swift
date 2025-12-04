import Foundation

func vulnerableFunction(input: String) -> String {
    var result = ""
    for i in 0..<input.count {
        result.append(input[input.index(input.startIndex, offsetBy: i)])
    }
    return result
}

let input = "This is a long string that will cause a buffer overflow if not handled properly"
print(vulnerableFunction(input: input))