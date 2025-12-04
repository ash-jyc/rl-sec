import Foundation

class MyClass {
    var closure: (() -> Void)?
    
    deinit {
        print("MyClass is being deinitialized")
    }
}

var instance: MyClass? = MyClass()

instance?.closure = { [weak instance] in
    DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
        if let strongInstance = instance {
            print("Closure is still retained by \(strongInstance)")
        } else {
            print("Closure is released")
        }
    }
}

instance = nil