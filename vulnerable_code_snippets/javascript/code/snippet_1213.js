// This is a simple Node.js server that has an XSS vulnerability
const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let name = queryObject.name || 'World';
    
    // Here, the user input is not properly sanitized. It's directly being used in the response.
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(`Hello ${name}`);
}).listen(8080);