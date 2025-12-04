func processData(data: UnsafeMutablePointer<Int>) {
    let localCopy = data.pointee
    // Do some processing on localCopy
}

var data = UnsafeMutablePointer<Int>.allocate(capacity: 1)
data.initialize(to: 42)
processData(data: data)
data.deallocate()