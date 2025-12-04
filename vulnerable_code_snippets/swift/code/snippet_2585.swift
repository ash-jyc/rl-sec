import Foundation

func sendRequest(urlString: String) {
    guard let url = URL(string: urlString) else { return }
    let request = URLRequest(url: url)
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let data = data {
            print(String(data: data, encoding: .utf8) ?? "Unable to convert data to string")
        } else if let error = error {
            print("Error: \(error)")
        }
    }
    
    task.resume()
}

sendRequest(urlString: "https://example.com/user=123")