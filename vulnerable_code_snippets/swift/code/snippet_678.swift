import Foundation

func processData(_ data: UnsafeMutableBufferPointer<UInt8>) {
    let bufferSize = 1024
    let processedData = UnsafeMutableBufferPointer<UInt8>.allocate(capacity: bufferSize)
    
    // No checking of buffer size here
    processedData.initialize(from: data, count: data.count)
    
    // Process the data...
}

let dataToProcess = Data(repeating: 0xFF, count: 2048)
processData(dataToProcess.withUnsafeMutableBytes { (buffer: UnsafeMutableBufferPointer<UInt8>) -> Void in
    // Buffer overflow here, as buffer size is smaller than data size
})