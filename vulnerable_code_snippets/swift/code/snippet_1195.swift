import Foundation

// Define a struct to hold the buffer
struct Buffer {
    var data: [UInt8]
}

// Function to write data to the buffer
func writeData(_ buffer: inout Buffer, _ data: [UInt8]) {
    // Check if the data fits into the buffer
    if data.count > buffer.data.count {
        fatalError("Buffer overflow detected")
    }
    
    // Write the data to the buffer
    buffer.data = data
}

// Test the function
var buffer = Buffer(data: Array(repeating: 0, count: 10))
writeData(&buffer, Array(repeating: 1, count: 20))