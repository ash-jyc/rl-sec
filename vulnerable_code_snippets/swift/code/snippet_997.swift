import Foundation

class DataProvider {
    var completionHandlers: [() -> Void] = []
    
    func fetchData(completionHandler: @escaping () -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            print("Data fetched successfully.")
            completionHandler()
        }
    }
    
    func addCompletionHandler(completionHandler: @escaping () -> Void) {
        self.completionHandlers.append(completionHandler)
    }
    
    func callCompletionHandlers() {
        for handler in self.completionHandlers {
            handler()
        }
        self.completionHandlers.removeAll()
    }
}

let provider = DataProvider()
provider.fetchData {
    print("Completed fetching data.")
}

for _ in 1...100000 {
    provider.addCompletionHandler {
        print("Completed fetching data.")
    }
}

DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
    provider.callCompletionHandlers()
}