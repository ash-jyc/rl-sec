class MyClass {
    var closure: (() -> Void)?
    
    func startTimer() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [weak self] timer in
            self?.closure = {
                print("Timer fired")
            }
        }
        
        RunLoop.current.run()
    }
}

let myClass = MyClass()
myClass.startTimer()