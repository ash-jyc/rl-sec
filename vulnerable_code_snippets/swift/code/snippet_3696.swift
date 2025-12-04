class UnsafeClass {
    var data: String?
    
    init(data: String?) {
        self.data = data
    }
    
    func printData() {
        if let data = self.data {
            print(data)
        } else {
            print("No data")
        }
    }
}

var instance: UnsafeClass? = UnsafeClass(data: "Hello, World")
instance = nil // Here we deallocate the instance
instance?.printData() // This will cause a use-after-free bug