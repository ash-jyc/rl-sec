const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = queryObject.data;
    
    // Vulnerable code: using eval() function
    eval(data);

    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end();
}).listen(8080);