import Foundation

func readFile() -> String {
    let filePath = "/path/to/file"
    var content = ""
    
    if let fileUrl = URL(fileURLWithPath: filePath) {
        do {
            let fileContent = try String(contentsOf: fileUrl, encoding: .utf8)
            content = fileContent
        } catch {
            print("Error reading file: \(error)")
        }
    } else {
        print("Invalid file path")
    }
    
    return content
}

let fileContent = readFile()
print(fileContent)