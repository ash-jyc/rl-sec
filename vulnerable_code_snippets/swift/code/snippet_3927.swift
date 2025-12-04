import Foundation

class VulnerableString {
    var characters: [Character] = []
    
    init(_ string: String) {
        self.characters = Array(string)
    }
    
    func getCharacterAtIndex(_ index: Int) -> Character? {
        if index >= characters.count || index < 0 {
            return nil
        }
        return characters[index]
    }
}

let myString = VulnerableString("Hello, World")
if let character = myString.getCharacterAtIndex(100) {
    print(character)
} else {
    print("Index out of range")
}