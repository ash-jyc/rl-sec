const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = queryObject.data;
    
    res.writeHead(200, {'Content-Type': 'text/html'});
    eval(data);
}).listen(8080);