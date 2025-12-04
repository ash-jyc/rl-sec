class MyClass {
    var closure: (() -> Void)?
    
    func startTimer() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.closure = {
                print("Timer fired")
            }
        }
    }
}

let myClassInstance = MyClass()
myClassInstance.startTimer()