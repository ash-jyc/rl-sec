class MyClass {
    var data: String?
    
    init(data: String?) {
        self.data = data
    }
    
    func processData() -> String? {
        return self.data
    }
}

var myInstance: MyClass? = MyClass(data: "Hello, World")
myInstance = nil // Here we're deallocating the instance prematurely 

print(myInstance?.processData()) // This will result in a use-after-free error