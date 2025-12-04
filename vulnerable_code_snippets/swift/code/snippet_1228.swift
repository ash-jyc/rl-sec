import Foundation

class MyClass {
    func doSomething() {
        let url = URL(string: "http://thisurldoesnotexist.com")
        let task = URLSession.shared.dataTask(with: url!) {(data, response, error) in
            guard let data = data else {
                // No data returned, handle error here
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            // Process the data
            let result = self.processData(data)
            print("Result: \(result)")
        }
        
        task.resume()
    }
    
    func processData(_ data: Data) -> String {
        // Assume this function can crash if the data is nil
        return String(data: data, encoding: .utf8)!
    }
}

let myObject = MyClass()
myObject.doSomething()