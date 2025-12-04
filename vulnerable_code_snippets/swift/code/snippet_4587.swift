class MemoryLeakClass {
    var data: [String] = []
    
    func addData(_ newData: String) {
        self.data.append(newData)
    }
}

var instance: MemoryLeakClass? = MemoryLeakClass()
for _ in 0..<1_000_000 {
    instance?.addData("Some data")
}
instance = nil