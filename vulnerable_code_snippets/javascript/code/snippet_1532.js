var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
    var queryObject = url.parse(req.url, true).query;
    var responseText = '<html><body>Hello ' + queryObject.name + '</body></html>';
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(responseText);
}).listen(8080);