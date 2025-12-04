let http = require('http');
let url = require('url');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    let q = url.parse(req.url, true).query;
    let txt = q.text + "<script>alert('XSS Attack')</script>";
    res.end(txt);
}).listen(8080);