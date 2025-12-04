import Foundation

func fetchDataFromServer(_ urlString: String) -> Data? {
    guard let url = URL(string: urlString) else { return nil }
    
    let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        // handle response here
    }
    
    task.resume()
    
    return nil
}

let data = fetchDataFromServer("https://example.com")
// do something with data