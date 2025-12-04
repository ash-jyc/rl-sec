let http = require('http');
let url = require('url');

http.createServer(function (req, res) {
  let queryObject = url.parse(req.url, true).query;
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("<h1>Hello " + queryObject.name + "</h1>");
  res.end();
}).listen(8080);