const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    if (queryObject.name) {
        res.writeHead(200, {'Content-Type': 'text/html'});
        res.write("<p>Hello, " + queryObject.name + "</p>");
        res.end();
    }
}).listen(8080);