import Foundation

enum NetworkError: Error {
    case badURL
    case noData
}

func fetchData(from urlString: String, completion: @escaping (Data?, NetworkError?) -> Void) {
    guard let url = URL(string: urlString) else {
        completion(nil, NetworkError.badURL)
        return
    }
    
    URLSession.shared.dataTask(with: url) { (data, response, error) in
        if let error = error {
            completion(nil, NetworkError.noData)
        }
        
        if let data = data {
            completion(data, nil)
        }
    }.resume()
}

fetchData(from: "https://example.com") { (data, error) in
    // This line will crash if data is nil or error is not nil
    let json = try? JSONSerialization.jsonObject(with: data!) as AnyObject
    print(json)
}