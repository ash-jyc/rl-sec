import Foundation

class MyClass {
    var myString: String?
    
    init(with str: String) {
        self.myString = str
    }
    
    func deinit() {
        print("Deinitializing \(self.myString ?? "")")
    }
}

var instance: MyClass? = MyClass(with: "Hello, World")
instance = nil

// This will cause a use-after-free error because we're trying to access `myString` after it has been deallocated
print(instance?.myString ?? "")