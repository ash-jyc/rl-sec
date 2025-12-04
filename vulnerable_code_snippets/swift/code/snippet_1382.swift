class UnsafeClass {
    var unsafeProperty: UnsafeObject?
    
    init() {
        self.unsafeProperty = UnsafeObject()
    }
}

class UnsafeObject {
    deinit {
        print("UnsafeObject has been deallocated")
    }
}

var instance: UnsafeClass? = UnsafeClass()
instance = nil // This will cause a memory leak because UnsafeObject's deinit method will not be called