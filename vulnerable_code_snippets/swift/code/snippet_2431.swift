import Foundation

func createString() -> String {
    let str = "Hello, World!"
    return str
}

func manipulateString(str: String) -> String {
    var mutableStr = str
    let index = str.index(str.startIndex, offsetBy: 5)
    mutableStr.insert("a", at: index)
    return mutableStr
}

let myStr = createString()
let manipulatedStr = manipulateString(str: myStr)
print(manipulatedStr)