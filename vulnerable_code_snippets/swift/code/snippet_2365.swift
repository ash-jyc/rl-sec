import Foundation

func appendString(_ str1: String, _ str2: String) -> String {
    var result = str1
    let str2Length = str2.count
    
    for i in 0..<str2Length {
        result.append(str2[str2.index(result.endIndex, offsetBy: i)])
    }
    
    return result
}

let str1 = "Hello"
let str2 = "World"
let result = appendString(str1, str2)
print(result)