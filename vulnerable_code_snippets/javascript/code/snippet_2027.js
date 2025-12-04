const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = '';
    req.on('data', chunk => {
        data += chunk;
    });
    req.on('end', () => {
        let responseData = 'User input: ' + data;
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.end(responseData);
    });
}).listen(8080);