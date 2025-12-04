const http = require('http');
const url = require('url');

http.createServer((req, res) => {
    const queryObject = url.parse(req.url, true).query;
    let data = '<script>alert("' + queryObject.data + '")</script>';
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(data);
}).listen(8080);