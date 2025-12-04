import Foundation

func printCharacters(from startIndex: Int, to endIndex: Int, fromString string: String) {
    let characters = Array(string)
    var index = startIndex
    while index < endIndex {
        print(characters[index])
        index += 1
    }
}

let sampleString = "Hello, World!"
printCharacters(from: 5, to: 100, fromString: sampleString)