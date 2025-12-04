class MyClass {
    var closure: (() -> Void)?
    
    func startTimer() {
        let timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            self.doSomething()
        }
        
        self.closure = { [weak timer] in
            timer?.invalidate()
        }
    }
    
    func doSomething() {
        print("Doing something...")
    }
}

let myObject = MyClass()
myObject.startTimer()