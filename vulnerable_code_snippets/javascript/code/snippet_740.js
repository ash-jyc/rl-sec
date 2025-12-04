const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write('<h1>Hello, User </h1>');
    res.write('<p>' + queryObject.name + '</p>');
    res.end();
}).listen(8080);