import Foundation

class MyClass {
    var closure: (() -> Void)?
    
    func startTimer() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.closure?()
        }
        
        self.closure = {
            print("Timer fired")
        }
        
        // Uncomment the line below to simulate a memory leak
        // self.closure = nil
    }
}

var myClassInstance: MyClass? = MyClass()
myClassInstance?.startTimer()
myClassInstance = nil