import Foundation

class VulnerableString {
    var characters: [Character] = []
    
    init() {}
    
    mutating func append(_ character: Character) {
        characters.append(character)
    }
    
    var description: String {
        return String(characters)
    }
}

var myString = VulnerableString()
for _ in 0..<1_000_000 {
    myString.append("a")
}
print(myString.description)