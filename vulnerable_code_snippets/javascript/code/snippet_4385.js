const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let responseData = `<html><body>Hello ${queryObject.name}</body></html>`;
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(responseData);
}).listen(8080);