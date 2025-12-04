import Foundation

// A simple HTTP server for demonstration purposes
let httpServer = HTTPServer { request in
    let urlComponents = URLComponents(string: "http://localhost/\(request.url.absoluteString)")
    
    // Vulnerable code: Directly using user input without sanitization
    let path = urlComponents?.path
    
    // Simulate a file reading operation based on the path
    if let filePath = path {
        do {
            let fileContents = try String(contentsOfFile: filePath, encoding: .utf8)
            return HTTPResponse(statusCode: .ok, body: .init(string: "File content: \(fileContents)"))
        } catch {
            return HTTPResponse(statusCode: .notFound)
        }
    }
    
    return HTTPResponse(statusCode: .notFound)
}

try httpServer.start()
RunLoop.main.run()