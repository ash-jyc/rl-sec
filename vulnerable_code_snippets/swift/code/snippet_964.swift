import Foundation

func unsafeInputValidation(userInput: String) -> String {
    let fixedSizeBuffer = UnsafeMutablePointer<Int8>.allocate(capacity: 10)
    userInput.withUnsafeBytes { (bytes: UnsafeRawBufferPointer) in
        bytes.copyBytes(to: fixedSizeBuffer, count: 20)
    }
    let result = String(cString: fixedSizeBuffer)
    fixedSizeBuffer.deallocate()
    return result
}

let userInput = "This is a long string that will cause a buffer overflow"
print(unsafeInputValidation(userInput: userInput))