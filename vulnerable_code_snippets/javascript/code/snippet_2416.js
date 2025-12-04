const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = '<html><body>';
    if ('name' in queryObject) {
        data += `Hello ${queryObject.name}`; // Vulnerable line
    }
    data += '</body></html>';
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(data);
}).listen(8080);