var http = require('http');
var url = require('url');

http.createServer(function (req, res) {
  var queryObject = url.parse(req.url, true).query;
  var userInput = queryObject.userInput;
  
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.write("<h1>Hello User</h1>");
  res.write("<p>" + userInput + "</p>");
  res.end();
}).listen(8080);