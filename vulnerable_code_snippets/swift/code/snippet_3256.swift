import Foundation

func createStringWithSize(_ size: Int) -> String {
    var str = ""
    for _ in 0..<size {
        str += "a"
    }
    return str
}

let largeSize = 1_000_000_000 // This is much larger than the actual available memory
let str = createStringWithSize(largeSize)
print(str)